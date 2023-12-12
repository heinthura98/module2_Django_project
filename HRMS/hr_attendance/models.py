from django.db import models
from hr_employees.models import EmployeeModel
from hr_tags.models import AttendanceTagModel
# Create your models here.
from django import forms

class AttendanceModel(models.Model):
    date = models.DateField(verbose_name="Date")
    clock_in = models.TimeField(verbose_name="Clock In")
    clock_out = models.TimeField(verbose_name="Clock Out")
    hours_worked = models.DecimalField(max_digits=5, decimal_places=2, verbose_name="Hours Worked")
    status = models.CharField(max_length=20, verbose_name="Status")
    note = models.TextField(blank=True, verbose_name="Note")
    is_approved = models.BooleanField(default=False, verbose_name="Is Approved")

    # ManyToOne relationship to EmployeeModel
    employee = models.ForeignKey(EmployeeModel, on_delete=models.CASCADE, verbose_name='Employee', null=True)

    # ManyToMany relationship to AttendanceTagModel
    tags = models.ManyToManyField(AttendanceTagModel, verbose_name='Attendance Tags', blank=True)
    
    def __str__(self):
        return f"{self.date}"
