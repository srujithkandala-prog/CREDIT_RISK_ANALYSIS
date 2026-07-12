SELECT *
FROM {{ ref('dim_region') }}

WHERE UPPER(region_name) NOT IN (

'NORTH',
'SOUTH',
'EAST',
'WEST',
'CENTRAL'

)