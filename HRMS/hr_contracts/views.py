from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView, DetailView
from hr_contracts import models
from hr_contracts import forms
from django.contrib.auth.mixins import LoginRequiredMixin,PermissionRequiredMixin
from django.utils.decorators import method_decorator
from django.views.decorators.cache import never_cache
from django.shortcuts import render
from django.views import View
from django.db.models import Q


class SearchBy(View,LoginRequiredMixin):
    login_url="login"
    def get(self, request):
        search = request.GET.get('search')
        if search:
            contracts = models.ContractModel.objects.filter(
                Q(name__icontains=search) |
                Q(rank__icontains=search) |
                Q(note__icontains=search) |
                Q(status__icontains=search) |
                Q(create_date__icontains=search) 
            )
        else:
            contracts = models.ContractModel.objects.all()
        return render(request, 'contract_list.html', {'contract_list': contracts})


class OrderBy(View):
    def get(self, request):
        order = request.GET.get('order')
        if order:
            contracts = models.ContractModel.objects.all().order_by(order)
            order_selected = {str(order): 'btn-primary text-white'}
        else:
            contracts = models.ContractModel.objects.all()
            order_selected = {}  # Empty dictionary if order is not provided
        context = {'contract_list': contracts, 'order_selected': order_selected}
        return render(request, 'contract_list.html', context)

# Contract List
decorators=(never_cache)
@method_decorator(decorators,name='dispatch')
class ContractListView(LoginRequiredMixin,ListView):
    login_url='login'
    model = models.ContractModel
    template_name = 'contract_list.html'
    context_object_name = "contract_list"


# Contract Create
decorators=(never_cache)
@method_decorator(decorators,name='dispatch')
class ContractCreateView(PermissionRequiredMixin,CreateView):
    permission_required = 'hr_contracts.add_contractmodel'
    login_url = 'login' 
    success_url = reverse_lazy("contract_list")
    model = models.ContractModel
    form_class = forms.ContractForm
    template_name = 'contract_create.html'

# Contract Update
decorators=(never_cache)
@method_decorator(decorators,name='dispatch')
class ContractUpdateView(PermissionRequiredMixin,UpdateView):
    permission_required = 'hr_contracts.change_contractmodel'
    login_url = 'login' 
    success_url = reverse_lazy("contract_list")
    model = models.ContractModel
    form_class = forms.ContractForm
    context_object_name = "contract"
    template_name = 'contract_update.html'

# Contract Detail
decorators=(never_cache)
@method_decorator(decorators,name='dispatch')
class ContractDetailView(PermissionRequiredMixin,DetailView):
    permission_required = 'hr_contracts.view_contractmodel' 
    login_url = 'login'
    model = models.ContractModel
    context_object_name = "contract"
    template_name = 'contract_detail.html'

# Contract Delete
decorators=(never_cache)
@method_decorator(decorators,name='dispatch')
class ContractDeleteView(PermissionRequiredMixin,DeleteView):
    permission_required = 'hr_departments.delete_departmentmodel'
    login_url = 'login' 
    success_url = reverse_lazy("contract_list")
    model = models.ContractModel
    context_object_name = "contract"
    template_name = 'contract_delete.html'
