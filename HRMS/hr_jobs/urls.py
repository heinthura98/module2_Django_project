from django.urls import path
from hr_jobs import views

urlpatterns = [
	path('show_job/', views.JobListView.as_view(), name='job_list'),
	path('new_job/', views.JobCreateView.as_view(), name='job_create'),
	path('update/<int:pk>/', views.JobUpdateView.as_view(), name='job_update'),
	path('delete/<int:pk>/', views.JobDeleteView.as_view(), name='job_delete'),
	path('detail/<int:pk>/', views.JobDetailView.as_view(), name='job_detail'),
	path('search_by/', views.SearchBy.as_view()),
	path('order_by/', views.OrderBy.as_view())
]
