
SELECT

    applicant_sk,

    applicant_id,

    gender,

    age_group,

    income,

    business_or_commercial,

    occupancy_type,

    construction_type,

    total_units,

    region

FROM {{ source('silver','silver_applicant_profiles') }}