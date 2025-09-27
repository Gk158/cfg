{% set tools = ['dbt', 'Snowflake', 'Matillion', 'Databricks', 'AWS'] %}
{%- for tool in tools %}
I do training on {{ tool }}
{%- if loop.last %}
"That's it"
{%- else %}
and
{%- endif %}
{%- endfor %}
