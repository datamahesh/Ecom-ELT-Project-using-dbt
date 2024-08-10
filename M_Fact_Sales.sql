with Fact_Sales as (
    SELECT
        {{ dbt_utils.generate_surrogate_key(['SALES_ID']) }} as SALES_ID,
        {{ dbt_utils.generate_surrogate_key(['CHANNEL_TYPE_ID']) }} as CHANNEL_TYPE_ID,
        {{ dbt_utils.generate_surrogate_key(['COUNTRY_D']) }} as COUNTRY_D,
        {{ dbt_utils.generate_surrogate_key(['CUSTOMER_TYPE']) }} as CUSTOMER_TYPE,
        {{ dbt_utils.generate_surrogate_key(['Discount_Type_Id']) }} as Discount_Type_Id,
        {{ dbt_utils.generate_surrogate_key(['PRODUCT_ID']) }} as PRODUCT_ID,
        {{ dbt_utils.generate_surrogate_key(['CHANNEL_ID']) }} as CHANNEL_ID,
        QUANTITY_PERCENTAGE as Quantity,
        COST_PRICE,
        SALES_PRICEWO_DISC,
        FINAL_SALES_PRICE,
        PROFIT_LOSS,
        PROFIT_LOSS_PER,
        Unit_CostPrice,
        Unit_SalePrice,
        Sales_Date


    FROM {{ ref('raw_Sales') }}
)
SELECT 
    * 
FROM 
    Fact_Sales 
