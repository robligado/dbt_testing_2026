WITH orderdata AS (
    SELECT * 
    FROM {{ source('tpch_source', 'ORDERS') }}
)

SELECT
    o_custkey,
    o_orderkey,
    o_orderdate,
    o_totalprice,
    o_orderstatus
FROM
    orderdata
