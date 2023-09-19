{% set has_main_slider = settings.slider and settings.slider is not empty %}
{% set has_mobile_slider = settings.toggle_slider_mobile and settings.slider_mobile and settings.slider_mobile is not empty %}

{% if has_mobile_slider %}
    {% set slider = settings.slider_mobile %}
{% else %}
    {% set slider = settings.slider %}
{% endif %}

{% if has_main_slider or has_mobile_slider %}
    {% for slide in slider %}
        {% set slide_image = slide.image | static_url %}
        {% if loop.first %}
            <link rel="preload" as="image" href="{{ slide_image | settings_image_url('original') }}" imagesrcset="{{ slide_image | settings_image_url('original') }} 1024w, {{ slide_image | settings_image_url('1080p') }} 1920w">
        {% endif %}
    {% endfor %}
{% endif %}