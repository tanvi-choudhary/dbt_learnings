{{
    config(
        materialized = 'incremental',
        unique_key= 'id'
    )
}}

select 
*
FROM 
{{source('landing','orders')}}

{% if is_incremental() %}

where created_at > (select coalesce(max(created_at,'1990-01-01')))

{% endif%}