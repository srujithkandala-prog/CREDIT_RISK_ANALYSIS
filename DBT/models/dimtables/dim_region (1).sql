{{ config(
    materialized='table'
) }}

SELECT DISTINCT

    region

FROM {{ source('silver','silver_applicant_profiles') }}