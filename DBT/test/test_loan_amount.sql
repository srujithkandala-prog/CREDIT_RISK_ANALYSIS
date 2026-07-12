SELECT *

FROM {{ ref('fact_credit_application') }}

WHERE loan_amount <= 0