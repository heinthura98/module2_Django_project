from django.urls import path
from hr_departments import views

urlpatterns = [
    path('show_department/', views.DepartmentListView.as_view(), name='department_list'),
    path('new_department/', views.DepartmentCreateView.as_view(), name='department_create'),
    path('update/<int:pk>/', views.DepartmentUpdateView.as_view(), name='department_update'),
    path('delete/<int:pk>/', views.DepartmentDeleteView.as_view(), name='department_delete'),
    path('detail/<int:pk>/', views.DepartmentDetailView.as_view(), name='department_detail'),
    path('search_by/', views.SearchBy.as_view()),
    path('order_by/', views.OrderBy.as_view())
]
