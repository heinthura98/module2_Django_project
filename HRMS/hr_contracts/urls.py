from django.urls import path
from hr_contracts import views

urlpatterns = [
	path('show_contract/', views.ContractListView.as_view(), name='contract_list'),
	path('new_contract/', views.ContractCreateView.as_view(), name='contract_create'),
	path('update/<int:pk>/', views.ContractUpdateView.as_view(), name='contract_update'),
	path('delete/<int:pk>/', views.ContractDeleteView.as_view(), name='contract_delete'),
	path('detail/<int:pk>/', views.ContractDetailView.as_view(), name='contract_detail'),
	path('search_by/', views.SearchBy.as_view()),
	path('order_by/', views.OrderBy.as_view())

]
