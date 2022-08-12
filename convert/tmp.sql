Select p.product_name_VI, 
    p.description_VI, 
    p.price, 
    c.name_VI, 
    c.address_VI, 
    c.contact_name 
from customer_product cp,
    product p, 
    customer c
Where cp.product_id = p.id and 
    cp.customer_id = c.id And
    id = <order number>;

SELECT 
    CASE @in_language 
        WHEN ‘VI’ THEN p.product_name_VI
        DEFAULT THEN p.product_name_EN,
    p.price,
    CASE @in_language 
        WHEN ‘VI’ THEN c.name_VI
        DEFAULT THEN c.name_EN,
    c.contact_name
FROM customer_product cp, 
    product p, customer c
WHERE cp.product_id = p.id AND 
    cp.customer_id = c.id AND 
    id = <order number>;