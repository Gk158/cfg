{%macro joincols (col1,col2 )%}
{{col1}} ||' ' ||{{col2}}
{% endmacro %}


{%macro dol_euro (col,deci=2)%}
round(0.89*{{col}},{{deci}})
{%endmacro%}

{%macro dol_inr (col,deci=2)%}
round(88.6*{{col}},{{deci}})
{%endmacro%}

{% macro mactest() %}
   {%do run_query ('create table test (id number, name string)')%}
   {%endmacro%}