from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView, DetailView
from django.views import View
from django.shortcuts import render
from hr_jobs import models
from hr_jobs import forms
from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.views.decorators.cache import never_cache
from django.utils.decorators import method_decorator
from django.db.models import Q

# Search and Order Views
class SearchBy(View):
    def get(self, request):
        search = request.GET.get('search')
        if search:
            jobs = models.JobModel.objects.filter(
                Q(name__icontains=search) |
                Q(sequence__icontains=search) |
                Q(expected_salary__icontains=search)
            )
        else:
            jobs = models.JobModel.objects.all()
        return render(request, 'job_list.html', {'job_list': jobs})

class OrderBy(View):
    def get(self, request):
        order = request.GET.get('order')
        if order:
            jobs = models.JobModel.objects.all().order_by(order).reverse
            order_selected = {str(order): 'btn-primary text-white'}
        else:
            jobs = models.JobModel.objects.all()
            order_selected = {}  # Empty dictionary if order is not provided
        context = {'job_list': jobs, 'order_selected': order_selected}
        return render(request, 'job_list.html', context)

# Job List
@method_decorator(never_cache, name='dispatch')
class JobListView(LoginRequiredMixin, ListView):
    login_url = 'login' 
    model = models.JobModel
    template_name = 'job_list.html'
    context_object_name = "job_list"

# Job Create
@method_decorator(never_cache, name='dispatch')
class JobCreateView(LoginRequiredMixin, PermissionRequiredMixin, CreateView):
    login_url = 'login'  
    permission_required = 'hr_jobs.add_jobmodel' 
    success_url = reverse_lazy("job_list")
    model = models.JobModel
    form_class = forms.JobForm
    template_name = 'job_create.html'

# Job Update
@method_decorator(never_cache, name='dispatch')
class JobUpdateView(LoginRequiredMixin, PermissionRequiredMixin, UpdateView):
    login_url = 'login' 
    permission_required = 'hr_jobs.change_jobmodel'  
    success_url = reverse_lazy("job_list")
    model = models.JobModel
    form_class = forms.JobForm
    context_object_name = "job"
    template_name = 'job_update.html'

# Job Detail
@method_decorator(never_cache, name='dispatch')
class JobDetailView(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    login_url = 'login'  
    permission_required = 'hr_jobs.view_jobmodel' 
    model = models.JobModel
    context_object_name = "job"
    template_name = 'job_detail.html'

# Job Delete
@method_decorator(never_cache, name='dispatch')
class JobDeleteView(LoginRequiredMixin, PermissionRequiredMixin, DeleteView):
    login_url = 'login' 
    permission_required = 'hr_jobs.delete_jobmodel' 
    success_url = reverse_lazy("job_list")
    model = models.JobModel
    context_object_name = "job"
    template_name = 'job_delete.html'
