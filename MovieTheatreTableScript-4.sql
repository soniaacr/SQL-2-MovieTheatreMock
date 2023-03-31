CREATE TABLE `Movies` (
  `file_id` SERIAL,
  `file_time` VARCHAR(100),
  `file_name` DATE(current date),
  PRIMARY KEY (`file_id`)
);

CREATE TABLE `Tickets` (
  `ticket_id` SERIAL,
  `file_name` VARCHAR(100),
  `order_date` DATE(current date),
  `sub_total` NUMERIC(8,2),
  `total_cost` NUMERIC(10,2),
  `film_id` integer,
  PRIMARY KEY (`ticket_id`),
  KEY `Key` (`film_id`)
);

CREATE TABLE `Concessions` (
  `item_id` SERIAL,
  `order_date` DATE(current date),
  `sub_total` NUMERIC(8,2),
  `total_cost` NUMERIC(10,2),
  PRIMARY KEY (`item_id`)
);

CREATE TABLE `Customer` (
  `customer_id` SERIAL,
  `first_name` VARCHAR(100),
  `last_name` VARCHAR(100),
  `address` VARCHAR(150),
  `billing_info` Type,
  PRIMARY KEY (`customer_id`)
);

CREATE TABLE `Payment` (
  `payment_id` SERIAL,
  `customer_id` integer,
  `ticket_id` integer,
  `item_id` integer,
  `employee_id` VARCHAR(15),
  PRIMARY KEY (`payment_id`),
  FOREIGN KEY (`ticket_id`) REFERENCES `Concessions`(`sub_total`),
  FOREIGN KEY (`customer_id`) REFERENCES `Customer`(`last_name`)
);
