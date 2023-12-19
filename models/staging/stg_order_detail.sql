SELECT *,
    unitprice * quantity AS grossprice,
    grossprice * discount AS discountamount,
    grossprice - discountamount AS netprice
FROM {{ ref ('raw_order_detail') }}