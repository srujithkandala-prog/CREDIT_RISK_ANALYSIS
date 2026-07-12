{{ config(
    materialized='table'
) }}

SELECT

    ca.application_sk,

    ap.applicant_sk,

    ld.loan_sk,

    ca.applicant_id,

    ca.year,

    ca.loan_limit,

    ca.approv_in_adv,

    ca.loan_type,

    ca.loan_purpose,

    ca.loan_amount,

    ca.rate_of_interest,

    ca.interest_rate_spread,

    ca.upfront_charges,

    ca.term,

    ca.submission_of_application,

    ca.region,

    ca.application_status,

    ca.ingestion_timestamp,

    ca.load_date

FROM {{ source('silver','silver_credit_application') }} ca

LEFT JOIN {{ ref('dim_applicant') }} ap
ON ca.applicant_id = ap.applicant_id

LEFT JOIN {{ ref('dim_loan') }} ld
ON ca.applicant_id = ld.applicant_id