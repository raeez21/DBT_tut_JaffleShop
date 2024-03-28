
select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount is in cents, conver to dollars
    amount/100 as amount
from {{ source('stripe', 'payment') }}