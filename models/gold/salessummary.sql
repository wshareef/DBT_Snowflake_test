
SELECT
    o.order_id,
    o.customer_id,
    o.first_name,
    o.last_name,
    SUM(o.amount) As TotalAmount
FROM {{ ref('orders_customers') }} o 
where  o.status ='Delivered'
group by o.order_id,
    o.customer_id,
    o.first_name,
    o.last_name