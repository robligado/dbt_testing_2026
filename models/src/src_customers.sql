--- testing dbt topic
WITH custdata AS (
    SELECT *
    FROM {{ source('tpch_source', 'CUSTOMER') }}
)

SELECT
    c_custkey,
    c_mktsegment
FROM custdata
