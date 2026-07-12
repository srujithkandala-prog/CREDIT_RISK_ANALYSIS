{{ config(
    materialized='table'
) }}

SELECT

    loan_sk,

    applicant_id,

    loan_id,

    loan_type,

    loan_purpose,

    loan_amount,

    loan_term,

    property_value,

    loan_to_value,

    secured_by,

    security_type

FROM {{ source('silver','silver_loan_details') }}