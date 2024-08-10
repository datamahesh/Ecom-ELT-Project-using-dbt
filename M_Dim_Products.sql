with Dim_Products as (
    SELECT
        {{ dbt_utils.generate_surrogate_key(['PRODUCT_ID']) }} as PRODUCT_ID,
        PRODUCT_NAME,
        PRODUCT_CATEGORY,
        PRODUCT_CLASS
    FROM {{ ref('raw_Sales') }}
)
SELECT 
    * 
FROM 
    Dim_Products
