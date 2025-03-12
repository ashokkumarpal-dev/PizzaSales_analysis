-- Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT 
    pizza_types.category,
    SUM(order_details.quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY quantity DESC ;

-- Total number of pizza ordered from each category is 
-- 'Classic', '14888'
-- 'Supreme', '11987'
-- 'Veggie', '11649'
-- 'Chicken', '11050'
