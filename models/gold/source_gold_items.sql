with dedup_query as
(
    select 
    *,
    ROW_NUMBER() over (partition by id order by updatedate desc) as deduplication_id
    from
        {{ source ('SOURCE_SCHEMA','ITEMS')}}
)
select id,name,category,updatedate
from dedup_query
where
    deduplication_id=1