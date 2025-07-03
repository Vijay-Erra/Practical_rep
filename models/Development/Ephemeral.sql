{{ config(materialized='ephemeral') }}

WITH tb1 as(
    select
    ID ,
    NAME,
    LOCATION
    from {{source('SOURCE_TABLE_NAME','DBT_MODEL')}})
select * from tb1
