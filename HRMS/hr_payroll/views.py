from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.views import View
from django.views.generic import ListView, CreateView, UpdateView, DeleteView, DetailView
from hr_payroll import models
from hr_payroll import forms
from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.views.decorators.cache import never_cache
from django.utils.decorators import method_decorator
from django.db.models import Q

# Import the PayrollModel
from hr_payroll.models import PayrollModel

class SearchBy(View):
    def get(self, request):
        search = request.GET.get('search')
        if search:
            payroll = PayrollModel.objects.filter(
                Q(employee__icontains=search) |
                Q(tax__icontains=search) |
                Q(bonus__icontains=search)
            )
        else:
            payroll = PayrollModel.objects.all()
        return render(request, 'payroll_list.html', {'payroll_list': payroll})

class OrderBy(View):
    def get(self, request):
        order = request.GET.get('order')
        if order:
            payroll = PayrollModel.objects.all().order_by(order).reverse()
            order_selected = {str(order): 'btn-primary text-white'}
        else:
            payroll = PayrollModel.objects.all()
            order_selected = {}  # Empty dictionary if order is not provided
        context = {'payroll_list': payroll, 'order_selected': order_selected}
        return render(request, 'payroll_list.html', context)

# Payroll List
@method_decorator(never_cache, name='dispatch')
class PayrollListView(LoginRequiredMixin, ListView):
    login_url = 'login'
    model = models.PayrollModel
    template_name = 'payroll_list.html'
    context_object_name = "payroll_list"

# Payroll Create
@method_decorator(never_cache, name='dispatch')
class PayrollCreateView(LoginRequiredMixin, PermissionRequiredMixin, CreateView):
    login_url = 'login'
    permission_required = 'hr_payroll.add_payrollmodel'
    success_url = reverse_lazy("payroll_list")
    model = models.PayrollModel
    form_class = forms.PayrollForm
    template_name = 'payroll_create.html'

# Payroll Update
@method_decorator(never_cache, name='dispatch')
class PayrollUpdateView(LoginRequiredMixin, PermissionRequiredMixin, UpdateView):
    login_url = 'login'
    permission_required = 'hr_payroll.change_payrollmodel'
    model = models.PayrollModel
    form_class = forms.PayrollForm
    context_object_name = "payroll"
    template_name = 'payroll_update.html'

# Payroll Detail
@method_decorator(never_cache, name='dispatch')
class PayrollDetailView(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    login_url = 'login'
    permission_required = 'hr_payroll.view_payrollmodel'
    model = models.PayrollModel
    context_object_name = "payroll"
    template_name = 'payroll_detail.html'

# Payroll Delete
@method_decorator(never_cache, name='dispatch')
class PayrollDeleteView(LoginRequiredMixin, PermissionRequiredMixin, DeleteView):
    login_url = 'login'
    permission_required = 'hr_payroll.delete_payrollmodel'
    success_url = reverse_lazy("payroll_list")
    model = models.PayrollModel
    context_object_name = "payroll"
    template_name = 'payroll_delete.html'
