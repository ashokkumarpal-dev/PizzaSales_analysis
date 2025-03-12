-- List the top 5 most ordered pizza types along with their quantities.
SELECT 
    pizza_types.name,
    SUM(order_details.quantity) AS quantity_ordered
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity_ordered DESC
LIMIT 5;

-- The top 5 ordered pizzas are 
-- 'The Classic Deluxe Pizza', '2453'
-- 'The Barbecue Chicken Pizza', '2432'
-- 'The Hawaiian Pizza', '2422'
-- 'The Pepperoni Pizza', '2418'
-- 'The Thai Chicken Pizza', '2371'
