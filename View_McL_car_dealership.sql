select * from salesperson_mcl;

select * from mechanics_McL;

select * from customer_McL;

select * from inventory_McL;

select * from invoices_McL;

select * from parts_McL;

select * from service_ticket_McL;

-- complicated query using joins
select customer_McL.first_name, customer_McL.last_name, inventory_McL.make, 
	inventory_McL.model, inventory_McL.model_year, invoices_McL.sale_price, 
	salesperson_mcl.first_name as Salesperson,
	0.015 * invoices_McL.sale_price as commision
from invoices_mcl
inner join customer_mcl
on invoices_mcl.customer_id = customer_McL.customer_id 
inner join inventory_mcl
on invoices_mcl.inv_id = inventory_mcl.inv_id
inner join salesperson_mcl
on invoices_mcl.salesperson_id = salesperson_mcl.salesperson_id 

