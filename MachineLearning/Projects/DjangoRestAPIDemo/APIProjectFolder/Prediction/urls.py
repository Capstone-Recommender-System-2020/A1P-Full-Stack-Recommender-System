from django.urls import path
import Prediction.views as views

urlpatterns = [
    path('get_events_1st_alg/', views.get_events_1st_alg.as_view(), name = 'get_events_1st_alg'),
    path('get_events_2nd_alg/', views.get_events_2nd_alg.as_view(), name = 'get_events_2nd_alg'),
    path('get_events_3rd_alg/', views.get_events_3rd_alg.as_view(), name = 'get_events_3rd_alg'),
]