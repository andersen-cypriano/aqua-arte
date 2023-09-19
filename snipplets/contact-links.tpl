<ul class="contact-info">
	{% if store.whatsapp %}
		<li class="contact-item">
			<svg class="icon-inline icon-lg icon-w contact-item-icon"><use xlink:href="#whatsapp"/></svg>
			<a href="{{ store.whatsapp }}" class="contact-link">{{ store.whatsapp |trim('https://wa.me/') }}</a>
		</li>
	{% endif %}
	{% if store.phone %}
		<li class="contact-item">
			<svg class="icon-inline icon-lg icon-w contact-item-icon"><use xlink:href="#phone"/></svg>
			<a href="tel:{{ store.phone }}" class="contact-link">{{ store.phone }}</a>
		</li>
	{% endif %}
	{% if store.email %}
		<li class="contact-item">
			<svg class="icon-inline icon-lg icon-w contact-item-icon"><use xlink:href="#email"/></svg>
			<a href="mailto:{{ store.email }}" class="contact-link">{{ store.email }}</a>
		</li>
	{% endif %}
	{% if store.address and not is_order_cancellation %}
		<li class="contact-item">
			<svg class="icon-inline icon-lg icon-w contact-item-icon"><use xlink:href="#map-marker-alt"/></svg>
			{{ store.address }}
		</li>
	{% endif %}
	{% if store.blog %}
		<li class="contact-item">
			<svg class="icon-inline icon-lg icon-w contact-item-icon"><use xlink:href="#comments"/></svg>
			<a target="_blank" href="{{ store.blog }}" class="contact-link">{{ "Visita nuestro Blog!" | translate }}</a>
		</li>
	{% endif %}
</ul>