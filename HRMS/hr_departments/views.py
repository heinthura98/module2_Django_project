from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView, DetailView, View
from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.views.decorators.cache import never_cache
from django.utils.decorators import method_decorator
from django.shortcuts import render, redirect
from .models import DepartmentModel
from .forms import DepartmentForm
from django.db.models import Q

class SearchBy(View):
    def get(self, request):
        search = request.GET.get('search')
        if search:
            departments = DepartmentModel.objects.filter(
                Q(name__icontains=search) |
                Q(sequence__icontains=search)
            )
        else:
            departments = DepartmentModel.objects.all()
        return render(request, 'department_list.html', {'department_list': departments})

class OrderBy(View):
    def get(self, request):
        order = request.GET.get('order')
        if order:
            departments = DepartmentModel.objects.all().order_by(order).reverse()
            order_selected = {str(order): 'btn-primary text-white'}
        else:
            departments = DepartmentModel.objects.all()
            order_selected = {}  # Empty dictionary if order is not provided
        context = {'department_list': departments, 'order_selected': order_selected}
        return render(request, 'department_list.html', context)

# Department List
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class DepartmentListView(LoginRequiredMixin, ListView):
    login_url = 'login'
    model = DepartmentModel
    template_name = 'department_list.html'
    context_object_name = "department_list"

# Department Create
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class DepartmentCreateView(PermissionRequiredMixin, CreateView):
    permission_required = 'hr_departments.add_departmentmodel'
    login_url = 'login'
    model = DepartmentModel
    form_class = DepartmentForm
    template_name = 'department_create.html'
    success_url = reverse_lazy('department_list')

# Department Update
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class DepartmentUpdateView(PermissionRequiredMixin, UpdateView):
    permission_required = 'hr_departments.change_departmentmodel'
    login_url = 'login'
    model = DepartmentModel
    form_class = DepartmentForm
    template_name = 'department_update.html'
    context_object_name = "department"
    success_url = reverse_lazy('department_list')

# Department Detail
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class DepartmentDetailView(PermissionRequiredMixin, DetailView):
    permission_required = 'hr_departments.view_departmentmodel'
    login_url = 'login'
    model = DepartmentModel
    context_object_name = "department"
    template_name = 'department_detail.html'

# Department Delete
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class DepartmentDeleteView(PermissionRequiredMixin, DeleteView):
    permission_required = 'hr_departments.delete_departmentmodel'
    login_url = 'login'
    model = DepartmentModel
    context_object_name = "department"
    template_name = 'department_delete.html'
    success_url = reverse_lazy('department_list')
