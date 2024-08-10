with Dim_Customers as (
    SELECT
        {{ dbt_utils.generate_surrogate_key(['CUSTOMER_TYPE']) }} as CUSTOMER_TYPE,
        CUSTOMER_SATISFACTION,
        COMPLAINTS_REASON,
        CUSTOMER_RATING
    FROM {{ ref('raw_Sales') }}
)
SELECT 
    * 
FROM 
    Dim_Customers

