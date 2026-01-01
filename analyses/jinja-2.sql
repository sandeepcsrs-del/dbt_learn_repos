{% set apples = ["gala","fuji","honeycrisp","mcintosh"] %}
{% for i in apples %}
    {% if i !="mcintosh" %}
        {{i}}
    {% else %} 
        I hate {{i}} 
    {% endif %}      
 {% endfor %}