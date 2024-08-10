with Dim_Discount as (
    SELECT
        {{ dbt_utils.generate_surrogate_key(['Discount_Type_Id']) }} as Discount_Type_Id,
        Discount_Type,
        Discount,
        Discount_

    FROM {{ ref('raw_Sales') }}
)
SELECT 
    * 
FROM 
    Dim_Discount
