{% set var1 = 'Hello World'-%}
{{var1}}

{% set var2 -%}
    Hello World2
{% endset -%}
{{var2}}

{% set now = modules.datetime.datetime.now() -%}
{% set three_days_ago_iso = (now - modules.datetime.timedelta(3)).isoformat() -%}
{{now}}

{% set col_brz_order = adapter.get_columns_in_relation(ref('bronze_orders')) -%}
{% for col in col_brz_order -%}
{{col.name}}
{% endfor -%}