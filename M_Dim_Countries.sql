with Dim_Countries as (
    SELECT
        {{ dbt_utils.generate_surrogate_key(['COUNTRY_D']) }} as COUNTRY_D,
        COUNTRY,
        GEOGRAPHIC_REGION

    FROM {{ ref('raw_Sales') }}
)
SELECT 
    * 
FROM 
    Dim_Countries
