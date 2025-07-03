{{ config(
    materialized="incremental",
    incremental_strategy="append",
) }}

select * from {{source('SOURCE_TABLE_NAME','SF_TEST')}}

