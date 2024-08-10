with Dim_Sales_Channel as (
    SELECT
        {{ dbt_utils.generate_surrogate_key(['CHANNEL_ID']) }} as CHANNEL_ID,
        SALES_CHANNEL

    FROM {{ ref('raw_Sales') }}
)
SELECT 
    * 
FROM 
    Dim_Sales_Channel
