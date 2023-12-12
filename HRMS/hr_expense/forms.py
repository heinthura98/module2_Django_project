from django import forms
from django.forms import widgets
from .models import ExpenseModel

class ExpenseForm(forms.ModelForm):
    class Meta:
        model = ExpenseModel
        fields = "__all__"
        labels = {
            'title': 'Name',
            'value': 'Value',
            'date': 'Date',
            'cash_out': 'Cash Out',
            'employee': 'Employee',
            'description': 'Description',
            'receipt_number': 'Receipt Number',
            'category': 'Category',
            'tags': 'Tags',  
        }
        widgets = {
            'title': widgets.TextInput(attrs={'placeholder': 'Name','class':'form-control'}),
            'value': widgets.NumberInput(attrs={'placeholder': '0','class':'form-control'}),
            'date': widgets.DateInput(attrs={'placeholder': 'Date', 'type': 'date','class':'form-control'}),
            'cash_out': widgets.CheckboxInput(),
            'employee': widgets.Select(attrs={'placeholder': 'Employee','class':'form-control'}),
            'description': widgets.Textarea(attrs={'placeholder': 'Description','class':'form-control'}),
            'receipt_number': widgets.TextInput(attrs={'placeholder': 'Receipt Number','class':'form-control'}),
            'category': widgets.TextInput(attrs={'placeholder': 'Category','class':'form-control'}),
            'tags': widgets.CheckboxSelectMultiple(), 
        }
