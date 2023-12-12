from django import forms
from django.forms import widgets
from .models import AttendanceModel

class AttendanceForm(forms.ModelForm):
    class Meta:
        model = AttendanceModel
        fields = ['employee','date', 'clock_in', 'clock_out', 'hours_worked', 'status', 'note', 'is_approved', 'tags']
        labels = {
            'employee': 'Employee',
            'date': 'Date',
            'clock_in': 'Clock In',
            'clock_out': 'Clock Out',
            'hours_worked':'hours_worked',
            'status': 'Status',
            'note': 'Note',
            'is_approved': 'Is Approved',
            'employee': 'Employee',
            'tags': 'Tags',
        }
        widgets = {
            'employee': forms.Select(attrs={'placeholder': 'Employee','class':'form-control'}),
            'date': forms.DateInput(attrs={'type': 'date','class':'form-control'}),
            'clock_in': forms.TimeInput(attrs={'type': 'time','class':'form-control'}),
            'clock_out': forms.TimeInput(attrs={'type': 'time','class':'form-control'}),
            'hours_worked':forms.TextInput(attrs={'placeholder':'hours worked','class':'form-control'}),
            'status': forms.TextInput(attrs={'placeholder': 'e.g., Present, Absent','class':'form-control'}),
            'note': forms.Textarea(attrs={'rows': 3, 'placeholder': 'Optional note','class':'form-control'}),
            'is_approved': forms.CheckboxInput(),
            'tags': forms.CheckboxSelectMultiple(),
        }