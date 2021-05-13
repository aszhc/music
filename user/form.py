from django.contrib.auth.forms import UserCreationForm
from .models import MyUser
from django import forms


# 定义模型MyUser的数据表单
class MyUserCreationForm(UserCreationForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # 设置字段password1和password2的属性
        self.fields['password1'].widget = forms.PasswordInput(
            attrs={'class': 'txt tabInput', 'placeholder': '密码要求,8-16位字母、符号、数字(空格除外)'})
        self.fields['password2'].widget = forms.PasswordInput(attrs={'class': 'txt tabInput', 'placeholder': '重复密码'})

    class Meta(UserCreationForm.Meta):
        model = MyUser
        # 在界面中加入字段、电话号码和密码
        fields = UserCreationForm.Meta.fields + ('mobile',)
        # 设置字段的属性
        widgets = {
            'mobile': forms.widgets.TextInput(attrs={'class': 'txt tabInput', 'placeholder': '手机号'}),
            'username': forms.widgets.TextInput(attrs={'class': 'txt tabInput', 'placeholder': '用户名'}),
        }
