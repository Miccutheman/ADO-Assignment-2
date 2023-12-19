SELECT
    o.shipregion AS region,
    SUM(netprice) AS sales
FROM {{ ref ('stg_order_detail') }} AS od
JOIN {{ ref ('raw_order') }} AS o
    ON o.orderid = od.orderid
GROUP BY o.shipregion