--{{ config(schema='sales') }}

SELECT * FROM {{ source('raw_source', 'orders_raw') }}