{% snapshot  snap_customers_timestamp %}

{{
    config(
        strategy='timestamp',
        unique_key='ID',
        updated_at='CREATE_DTM'
        )
}}
select * 
from {{source('SOURCE_TABLE_NAME','DBT_SS')}}

{% endsnapshot %}