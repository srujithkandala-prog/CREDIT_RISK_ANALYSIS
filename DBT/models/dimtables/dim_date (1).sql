{{ config(
    materialized='table'
) }}

SELECT DISTINCT

    year

FROM {{ source('silver','silver_credit_application') }}