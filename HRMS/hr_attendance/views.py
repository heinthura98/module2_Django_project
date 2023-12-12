from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.views import View
from django.views.generic import ListView, CreateView, UpdateView, DeleteView, DetailView
from hr_attendance.models import AttendanceModel
from hr_attendance import forms
from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.utils.decorators import method_decorator
from django.views.decorators.cache import never_cache
from django.db.models import Q

class SearchBy(View):
    def get(self, request):
        search = request.GET.get('search')
        if search:
            attendance = AttendanceModel.objects.filter(
                Q(title__icontains=search) |
                Q(value__icontains=search) |
                Q(date__icontains=search)
            )
        else:
            attendance = AttendanceModel.objects.all()
        return render(request, 'attendance_list.html', {'attendance_list': attendance})

class OrderBy(View):
    def get(self, request):
        order = request.GET.get('order')
        if order:
            attendance = AttendanceModel.objects.all().order_by(order).reverse()
            order_selected = {str(order): 'btn-primary text-white'}
        else:
            attendance = AttendanceModel.objects.all()
            order_selected = {}
        context = {'attendance_list': attendance, 'order_selected': order_selected}
        return render(request, 'attendance_list.html', context)

# Attendance List
@method_decorator(never_cache, name='dispatch')
class AttendanceListView(LoginRequiredMixin, ListView):
    login_url = 'login'
    model = AttendanceModel
    template_name = 'attendance_list.html'
    context_object_name = "attendance_list"

# Attendance Create
@method_decorator(never_cache, name='dispatch')
class AttendanceCreateView(PermissionRequiredMixin, CreateView):
    login_url = 'login'
    permission_required = 'hr_attendance.add_attendancemodel'
    success_url = reverse_lazy("attendance_list")
    model = AttendanceModel
    form_class = forms.AttendanceForm
    template_name = 'attendance_create.html'

# Attendance Update
@method_decorator(never_cache, name='dispatch')
class AttendanceUpdateView(PermissionRequiredMixin, UpdateView):
    login_url = 'login'
    permission_required = 'hr_attendance.change_attendancemodel'
    success_url = reverse_lazy("attendance_list")
    model = AttendanceModel
    form_class = forms.AttendanceForm
    context_object_name = "attendance"
    template_name = 'attendance_update.html'

# Attendance Detail
@method_decorator(never_cache, name='dispatch')
class AttendanceDetailView(PermissionRequiredMixin, DetailView):
    login_url = 'login'
    permission_required = 'hr_attendance.view_attendancemodel'
    model = AttendanceModel
    context_object_name = "attendance"
    template_name = 'attendance_detail.html'

# Attendance Delete
@method_decorator(never_cache, name='dispatch')
class AttendanceDeleteView(PermissionRequiredMixin, DeleteView):
    login_url = 'login'
    permission_required = 'hr_attendance.delete_attendancemodel'
    success_url = reverse_lazy("attendance_list")
    model = AttendanceModel
    context_object_name = "attendance"
    template_name = 'attendance_delete.html'
