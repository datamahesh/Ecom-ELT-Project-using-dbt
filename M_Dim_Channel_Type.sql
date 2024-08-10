with Dim_Channel_Type as (
    SELECT
        {{ dbt_utils.generate_surrogate_key(['CHANNEL_TYPE_ID']) }} as CHANNEL_TYPE_ID,
        CHANNEL_TYPE
    FROM {{ ref('raw_Sales') }}
)
SELECT 
    * 
FROM 
    Dim_Channel_Type

