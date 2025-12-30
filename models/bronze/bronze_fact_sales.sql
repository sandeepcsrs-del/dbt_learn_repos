{{config (materialized= 'view')}}

select * 
FROM
{{source('SOURCE_SCHEMA','FACT_SALES')}}
 