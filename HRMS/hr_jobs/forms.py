from django import forms
from hr_jobs import models

STATUS_CHOICES = (
    ('draft', 'Draft'),
    ('open', 'Open'),
    ('confirm', 'Confirm')
)

class JobForm(forms.ModelForm):
    class Meta:
        model = models.JobModel
        fields = "__all__"
        labels = {
            'name': 'Enter Name',
            'sequence': 'Enter Sequence',
            'open_date': 'Enter Open Date',
            'expected_salary': 'Enter Expected Salary',
            'note': 'Enter Note',
            'status': 'Enter Status',
            'is_active': 'Is Active',
            'create_date': 'Enter Create Date',
            'attachment': 'Upload Attachment',
            'department': 'Department',
            'tags': 'Tags',
        }
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Nameeeee'}),
            'sequence': forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'Sequence'}),
            'open_date': forms.DateInput(attrs={'class': 'form-control', 'placeholder': 'Open Date', 'type': 'date'}),
            'expected_salary': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Expected Salary'}),
            'note': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Note'}),
            'status': forms.Select(attrs={'class': 'form-control'}, choices=STATUS_CHOICES),
            'is_active': forms.CheckboxInput(),
            'create_date': forms.DateTimeInput(attrs={'class': 'form-control', 'type': 'datetime-local'}),
            'attachment': forms.ClearableFileInput(attrs={'class': 'form-control', 'multiple': True}),
            'department': forms.Select(attrs={'class': 'form-control'}),
            'tags': forms.CheckboxSelectMultiple(),
        }
