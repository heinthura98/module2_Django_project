from django.db import models
from django.utils import timezone
from hr_employees.models import EmployeeModel
from hr_tags.models import ExpenseTagModel

class ExpenseModel(models.Model):
    title = models.CharField(max_length=20, verbose_name='Name')
    value = models.CharField(max_length=16, default='00,000.00')
    date = models.DateField(default=timezone.now)
    cash_out = models.BooleanField(default=False)

    description = models.TextField(blank=True, null=True, verbose_name='Description')
    receipt_number = models.CharField(max_length=20, blank=True, null=True, verbose_name='Receipt Number')
    category = models.CharField(max_length=20, blank=True, null=True, verbose_name='Category')
    
    # ManyToOne relationship to EmployeeModel
    employee = models.ForeignKey(EmployeeModel, on_delete=models.CASCADE, verbose_name='Employee', null=True)
    
    # ManyToMany relationship to ExpenseTagModel
    tags = models.ManyToManyField(ExpenseTagModel, verbose_name='Expense Tags', blank=True)

    def __str__(self):
        return self.name
