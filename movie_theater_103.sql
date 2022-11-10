CREATE TABLE `ticket` (
  `ticket_id` SERIAL,
  `theater` INTEGER,
  `movie` VARCHAR(50),
  `price` NUMERIC(8,2),
  `time` INTEGER,
  `date` INTEGER,
  `now_playing_id` INTEGER,
  PRIMARY KEY (`ticket_id`)
);

CREATE TABLE `customer` (
  `customer_id` SERIAL,
  `first_name` VARCHAR(50),
  `last_name` VARCHAR(50),
  `email` VARCHAR(50),
  `billing_info` INTEGER,
  `receipt_id` INTEGER,
  PRIMARY KEY (`customer_id`)
);

CREATE TABLE `now_playing` (
  `now_playing_id` SERIAL,
  `movie` VARCHAR(50),
  `date` INTEGER,
  `time` INTEGER,
  `seats_available` INTEGER,
  PRIMARY KEY (`now_playing_id`)
);

CREATE TABLE `receipt` (
  `receipt_id` SERIAL,
  `quantity` INTEGER,
  `coupon_code` VARCHAR(10),
  `total_price` NUMERIC(5,2),
  `ticket_id` INTEGER,
  `theater_id` INTEGER,
  `food_drink_id` INTEGER,
  `customer_id` INTEGER ,
  PRIMARY KEY (`receipt_id`)
);

CREATE TABLE `food_drink` (
  `food_drink_id` SERIAL,
  `drink_inventory` INTEGER,
  `drink_price` NUMERIC(8,2),
  `drink_quantity` INTEGER,
  `food_inventory` INTEGER,
  `food_price` NUMERIC(8,2),
  `food_quantity` INTEGER,
  PRIMARY KEY (`food_drink_id`)
);

CREATE TABLE `theater` (
  `theater_id` INTEGER,
  `movie` VARCHAR(50),
  `date` INTEGER,
  `time` INTEGER,
  `seats_available` INTEGER ,
  PRIMARY KEY (`theater_id`)
);

