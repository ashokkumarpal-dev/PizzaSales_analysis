-- Identify the highest-priced pizza.
SELECT 
    pizza_types.name, pizzas.price AS highest_priced_pizza
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;

-- highest_priced_pizza is The Greek Pizza which cost around 35.95 ;