from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView, DetailView, View
from hr_expense.models import ExpenseModel  # Make sure to import ExpenseModel from the correct module
from hr_expense.forms import ExpenseForm
from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.views.decorators.cache import never_cache
from django.utils.decorators import method_decorator
from django.shortcuts import render
from django.db.models import Q


class SearchBy(View):
    def get(self, request):
        search = request.GET.get('search')
        if search:
            expense = ExpenseModel.objects.filter(
                Q(title__icontains=search) |
                Q(value__icontains=search) |
                Q(date__icontains=search)
            )
        else:
            expense = ExpenseModel.objects.all()
        return render(request, 'expense_list.html', {'expense_list': expense})

class OrderBy(View):
    def get(self, request):
        order = request.GET.get('order')
        if order:
            expense = ExpenseModel.objects.all().order_by(order).reverse()
            order_selected = {str(order): 'btn-primary text-white'}
        else:
            expense = ExpenseModel.objects.all()
            order_selected = {}  
        context = {'expense_list': expense, 'order_selected': order_selected}
        return render(request, 'expense_list.html', context)

# Expense List
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class ExpenseListView(LoginRequiredMixin, ListView):
    login_url = 'login'  
    model = ExpenseModel
    template_name = 'expense_list.html'
    context_object_name = "expense_list"

# Expense Create
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class ExpenseCreateView(LoginRequiredMixin, PermissionRequiredMixin, CreateView):
    login_url = 'login' 
    permission_required = 'hr_expense.add_expensemodel'
    success_url = reverse_lazy("expense_list")
    model = ExpenseModel
    form_class = ExpenseForm
    template_name = 'expense_create.html'

# Expense Update
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class ExpenseUpdateView(LoginRequiredMixin, PermissionRequiredMixin, UpdateView):
    login_url = 'login' 
    permission_required = 'hr_expense.change_expensemodel'  
    success_url = reverse_lazy("expense_list")
    model = ExpenseModel
    form_class = ExpenseForm
    context_object_name = "expense"
    template_name = 'expense_update.html'

# Expense Detail
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class ExpenseDetailView(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    login_url = 'login'  
    permission_required = 'hr_expense.view_expensemodel'  
    model = ExpenseModel
    context_object_name = "expense"
    template_name = 'expense_detail.html'

# Expense Delete
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class ExpenseDeleteView(LoginRequiredMixin, PermissionRequiredMixin, DeleteView):
    login_url = 'login' 
    permission_required = 'hr_expense.delete_expensemodel' 
    success_url = reverse_lazy("expense_list")
    model = ExpenseModel
    context_object_name = "expense"
    template_name = 'expense_delete.html'
