from django.urls import path

from .views import TodoDetail, TodoList

urlpatterns = [
    path('<int:pk>/', TodoDetail.as_view(), name='get_detail'),
    path('list/', TodoList.as_view(), name='get_list'),
]

