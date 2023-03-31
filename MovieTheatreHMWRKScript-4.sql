-- Customer

insert into customer(customer_id, first_name, last_name, address, billing_info)
values (1, 'Daniel', 'Roman', '1410 Cristobal St. Spring Valley, CA 91910', '4242 6905 4576 0001');

insert into customer(customer_id, first_name, last_name, address, billing_info)
values (2, 'Robert', 'Victor', '1440 Orange Ave. El Cajon, CA 92020', '6969 4006 6786 0134');

insert into customer(customer_id, first_name, last_name, address, billing_info)
values (3, 'Sonia', 'Rios', '330 13th St. San Diego, CA 92101', '4892 9663 2948 6985');

insert into customer(customer_id, first_name, last_name, address, billing_info)
values (4, 'Valeria', 'Osuna', '1212 Sparkle Cir. Santee, CA 91944', '3669 4892 5896 2910');

insert into customer(customer_id, first_name, last_name, address, billing_info)
values (5, 'Brandon', 'Pierce', '217 Fluffy Ct. Chesapeake, VA 75723', '5810 6398 3330 9190');


--ticket information

select * from tickets;

insert into tickets(film_name, order_date, sub_total, total_cost)
values('Titanic', NOW()::timestamp,'8.00', '9.50');

insert into tickets(film_name, order_date, sub_total, total_cost)
values('Creed 3', NOW()::timestamp, '10.00', '11.50');

insert into tickets(film_name, order_date, sub_total, total_cost)
values('John Wick', NOW()::timestamp, '10.00', '11.50');

insert into tickets(film_name, order_date, sub_total, total_cost)
values('Puss In Boots', NOW()::timestamp, '8.00', '9.50');

insert into tickets(film_name, order_date, sub_total, total_cost)
values('Avatar 2', NOW()::timestamp, '11.99', '13.50');


-- film information

select * from movies;

insert into movies(film_id, film_name)
values('1','Titanic');

insert into movies(film_id, film_name)
values('2', 'Creed 3');

insert into movies(film_id, film_name)
values('3', 'John Wick');

insert into movies(film_id, film_name)
values('4', 'Puss In Boots');

insert into movies(film_id, film_name)
values('5', 'Avatar 2');

-- concession information

select * from concession; 

alter table concession add column item_type VARCHAR(100);

insert into concession (order_date, sub_total, total_cost, item_type)
values(NOW()::timestamp, 4.60, 6.10, 'popcorn');

insert into concession (order_date, sub_total, total_cost, item_type)
values(NOW()::timestamp, 6.00, 7.50, 'nachos');

insert into concession (order_date, sub_total, total_cost, item_type)
values(NOW()::timestamp, 5.00, 6.50, 'Slushee');

insert into concession (order_date, sub_total, total_cost, item_type)
values(NOW()::timestamp, 2.99, 4.49, 'Candy');

insert into concession (order_date, sub_total, total_cost, item_type)
values(NOW()::timestamp, 7.00, 8.50, 'Wine');