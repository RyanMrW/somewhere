CREATE DATABASE IF NOT EXISTS kit DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
use kit;

CREATE TABLE IF NOT EXISTS `users`(
   `id` INT(10) NOT NULL,
   `name` VARCHAR(100) NOT NULL,
   `age` INT
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE users CONVERT TO CHARACTER SET utf8;

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;



CREATE TABLE IF NOT EXISTS `stores`(
   `id` INT(10) NOT NULL,
   `name` VARCHAR(100) NOT NULL,
   `level` INT(3) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE stores CONVERT TO CHARACTER SET utf8;

ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level` (`level`);

ALTER TABLE `stores`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


CREATE TABLE IF NOT EXISTS `products`(
   `id` INT(10) NOT NULL,
   `store_id`  INT(10) NOT NULL,
   `name` VARCHAR(100) NOT NULL,
   `price` INT(10) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE products CONVERT TO CHARACTER SET utf8;

ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price` (`price`);

ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


CREATE TABLE IF NOT EXISTS `records`(
   `id` INT(10) NOT NULL,
   `product_id`  INT(10) NOT NULL,
   `user_id` INT(100) NOT NULL,
   `is_trade` boolean NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE products CONVERT TO CHARACTER SET utf8;

ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `records`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

COMMIT;

