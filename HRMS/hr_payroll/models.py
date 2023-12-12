from django.db import models
from hr_employees.models import EmployeeModel
from hr_tags.models import PayrollTagModel

class PayrollModel(models.Model):
    name = models.CharField(max_length=20, verbose_name='Name')
    salary = models.FloatField(verbose_name='Salary', default=0.0)
    ot_rate = models.IntegerField(verbose_name='Ot Rate', default=0)
    allowance = models.IntegerField(verbose_name='Allowance', default=0)
    deduction = models.IntegerField(verbose_name='Deduction', default=0)
    tax = models.FloatField(verbose_name='Tax', default=0.0)
    bonus = models.FloatField(verbose_name='Bonus', default=0.0)
    INSURANCE_CHOICES = [
        ('health', 'Health Insurance'),
        ('life', 'Life Insurance'),
        ('auto', 'Auto Insurance'),
        ('property', 'Property Insurance'),
        ('other', 'Other'),
    ]

    insurance = models.CharField(verbose_name='Insurance Type', max_length=10, choices=INSURANCE_CHOICES, default='health')

    # ManyToOne relationship to EmployeeModel
    employee = models.ForeignKey(EmployeeModel, on_delete=models.CASCADE, verbose_name='Employee', null=True)

    # ManyToMany relationship to PayrollTagModel
    tags = models.ManyToManyField(PayrollTagModel, verbose_name='Payroll Tags', blank=True)

    def __str__(self):
        return self.name
