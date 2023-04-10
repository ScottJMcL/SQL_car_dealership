create table salesperson_McL(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	phone VARCHAR(15),
	email VARCHAR(150)
);

create table mechanics_McL(
	mech_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	phone VARCHAR(15),
	email VARCHAR(150)
);

create table customer_McL(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	phone VARCHAR(15),
	email VARCHAR(150),
	billing_info VARCHAR(150)
);

create table inventory_McL(
	inv_id SERIAL primary key,
	make VARCHAR(100),
	model VARCHAR(100),
	model_year NUMERIC(4),
	color VARCHAR(50),
	serial_number INTEGER,
	state VARCHAR(100)
);

create table invoices_McL(
	invoice_id SERIAL primary key,
	customer_id INTEGER not null,
	inv_id INTEGER not null,
	sale_price NUMERIC(10,2),
	salesperson_id INTEGER,
	foreign key(customer_id) references customer_McL(customer_id),
	foreign key(salesperson_id) references salesperson_McL(salesperson_id),
	foreign key(inv_id) references inventory_McL(inv_id)
);

create table parts_McL(
	part_id SERIAL primary key,
	part_desc VARCHAR(150),
	part_cost NUMERIC(5,2) not NULL
);

create table service_McL(
	service_id SERIAL primary key,
	service_desc VARCHAR(150),
	labor_cost NUMERIC(5,2) not null,
	part_id INTEGER,
	foreign KEY(part_id) references parts_McL(part_id)
);

create table service_ticket_McL(
	ticket_id SERIAL primary key,
	serial_num INTEGER,
	customer_id INTEGER,
	service_id INTEGER,
	total_cost NUMERIC(5,2),
	foreign key(customer_id) references customer_McL(customer_id),
	foreign key(service_id) references service_McL(service_id)
);


