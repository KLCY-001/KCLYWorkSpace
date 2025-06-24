from django.contrib import admin
from .models import Post

@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    list_display = ('title', 'created', 'views')
    search_fields = ('title',)
    prepopulated_fields = {'slug': ('title',)}
    list_filter = ('created',)
