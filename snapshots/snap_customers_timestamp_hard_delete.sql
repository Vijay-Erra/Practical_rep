{% snapshot  snap_customers_timestamp_hard_delete %}

{{
    config(
        strategy='timestamp',
        unique_key='ID',
        updated_at='CREATE_DTM',
        invalidate_hard_deletes=True
        )
}}
select * 
from {{source('SOURCE_TABLE_NAME','DBT_SS')}}

{% endsnapshot %}