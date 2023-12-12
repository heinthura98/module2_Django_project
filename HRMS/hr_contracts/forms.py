

from django import forms
from .models import ContractModel

STATUS_CHOICES = (
    ('draft', 'Draft'),
    ('Open', 'Open'),
    ('Confirm', 'Confirm')
)

class ContractForm(forms.ModelForm):
    class Meta:
        model = ContractModel
        fields = "__all__"
        labels = {
            'name': 'Contract',
            'rank': 'Rank',
            'start_date': 'Start Date',
            'end_date': 'End Date',
            'note': 'Note',
            'status': 'Status',
            'is_active': 'Is Active',
            'create_date': 'Create Date',
            'attachment': 'Attachment',
            'employee': 'Employee',
            'tags': 'Tags',
        }
        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Your contract'}),
            'rank': forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'Your Rank'}),
            'start_date': forms.DateInput(attrs={'class': 'form-control', 'type': 'date'}),
            'end_date': forms.DateInput(attrs={'class': 'form-control', 'type': 'date'}),
            'note': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Your Note'}),
            'status': forms.Select(attrs={'class': 'form-control'}, choices=STATUS_CHOICES),
            'is_active': forms.CheckboxInput(),
            'create_date': forms.DateTimeInput(attrs={'class': 'form-control', 'type': 'datetime-local'}),
            'attachment': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'employee': forms.Select(attrs={'class': 'form-control'}),
            'tags': forms.CheckboxSelectMultiple(),
        }
