from django.urls import path
from hr_attendance import views

urlpatterns = [
    path('show_attendance/', views.AttendanceListView.as_view(), name='attendance_list'),
    path('new_attendance/', views.AttendanceCreateView.as_view(), name='attendance_create'),
    path('update/<int:pk>/', views.AttendanceUpdateView.as_view(), name='attendance_update'),
    path('delete/<int:pk>/', views.AttendanceDeleteView.as_view(), name='attendance_delete'),
    path('detail/<int:pk>/', views.AttendanceDetailView.as_view(), name='attendance_detail'),
]
