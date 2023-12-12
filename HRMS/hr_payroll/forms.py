from django import forms
from django.forms import widgets  

from .models import PayrollModel

class PayrollForm(forms.ModelForm):
    class Meta:
        model = PayrollModel
        fields = '__all__'
        labels = {
            'name': 'Name',
            'salary': 'Salary',
            'ot_rate': 'Ot Rate',
            'allowance': 'Allowance',
            'deduction': 'Deduction',
            'tax': 'Tax',
            'bonus': 'Bonus',
            'insurance': 'Insurance Type',
            'employee': 'Employee',
            'tags': 'Tags',
        }

        widgets = {
            'name': forms.TextInput(attrs={'placeholder': 'Name','class':'form-control'}),
            'salary': forms.NumberInput(attrs={'placeholder': '0.0','class':'form-control'}),
            'ot_rate': forms.NumberInput(attrs={'placeholder': '0','class':'form-control'}),
            'allowance': forms.NumberInput(attrs={'placeholder': '0','class':'form-control'}),
            'deduction': forms.NumberInput(attrs={'placeholder': '0','class':'form-control'}),
            'tax': forms.NumberInput(attrs={'placeholder': '0.0','class':'form-control'}),
            'bonus': forms.NumberInput(attrs={'placeholder': '0.0','class':'form-control'}),
            'insurance': forms.Select(attrs={'placeholder': 'Insurance Type','class':'form-control'}),
            'employee': forms.Select(attrs={'placeholder': 'Employee','class':'form-control'}),
            'tags': forms.CheckboxSelectMultiple()
        }
       