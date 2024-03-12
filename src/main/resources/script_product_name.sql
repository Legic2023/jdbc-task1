select product_name
from spring_jdbc.customers
         right join spring_jdbc.order on spring_jdbc.customers.id = spring_jdbc.order.customer_id
where upper(name) = upper(:name);
