from django.views import View
from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView, DetailView
from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.views.decorators.cache import never_cache
from django.utils.decorators import method_decorator
from hr_recruitments.models import ResumeModel
from hr_recruitments.forms import ResumeForm

class SearchBy(View):
    def get(self, request):
        search = request.GET.get('search')
        if search:
            recruitments = ResumeModel.objects.filter(
                Q(name__icontains=search) |
                Q(sequence__icontains=search)
            )
        else:
            recruitments = ResumeModel.objects.all()
        return render(request, 'resume_list.html', {'all_resumes': recruitments})

class OrderBy(View):
    def get(self, request):
        order = request.GET.get('order')
        if order:
            recruitments = ResumeModel.objects.all().order_by(order).reverse()
            order_selected = {str(order): 'btn-primary text-white'}
        else:
            recruitments = ResumeModel.objects.all()
            order_selected = {}  # Empty dictionary if order is not provided
        context = {'all_resumes': recruitments, 'order_selected': order_selected}
        return render(request, 'resume_list.html', context)

# Resume List
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class ResumeListView(LoginRequiredMixin, ListView):
    login_url = 'login' 
    model = ResumeModel
    context_object_name = 'all_resumes'
    template_name = 'resume_list.html'

# Resume Create
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class ResumeCreateView(LoginRequiredMixin, PermissionRequiredMixin, CreateView):
    login_url = 'login' 
    permission_required = 'hr_recruitments.add_resumemodel' 
    success_url = reverse_lazy("resume_list")
    model = ResumeModel
    form_class = ResumeForm
    template_name = 'resume_create.html'

# Resume Update
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class ResumeUpdateView(LoginRequiredMixin, PermissionRequiredMixin, UpdateView):
    login_url = 'login'  
    permission_required = 'hr_recruitments.change_resumemodel'  
    success_url = reverse_lazy("resume_list")
    model = ResumeModel
    form_class = ResumeForm
    context_object_name = "resume"
    template_name = 'resume_update.html'

# Resume Detail
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class ResumeDetailView(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    login_url = 'login'  
    permission_required = 'hr_recruitments.view_resumemodel'  
    model = ResumeModel
    context_object_name = "resume"
    template_name = 'resume_detail.html'

# Resume Delete
decorators = (never_cache,)
@method_decorator(decorators, name='dispatch')
class ResumeDeleteView(LoginRequiredMixin, PermissionRequiredMixin, DeleteView):
    login_url = 'login' 
    permission_required = 'hr_recruitments.delete_resumemodel' 
    success_url = reverse_lazy("resume_list")
    model = ResumeModel
    context_object_name = "resume"
    template_name = 'resume_delete.html'
