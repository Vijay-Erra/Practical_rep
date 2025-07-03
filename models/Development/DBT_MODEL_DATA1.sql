{{ config(materialized='table') }}

WITH tb1 as(
    select
    ID ,
    NAME,
    LOCATION
    from {{source('SOURCE_TABLE_NAME','DBT_MODEL')}}) c
--select * from tb1
join ref(Ephemeral) e
on c.ID=e.ID