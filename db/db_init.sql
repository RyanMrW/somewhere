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
   `name` VARCHAR(100) NOT NULL,
   `price` INT(10) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE products CONVERT TO CHARACTER SET utf8;

ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price` (`price`);

ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;



CREATE TABLE IF NOT EXISTS `sp`(
   `id` INT(10) NOT NULL,
   `store_id`  INT(10) NOT NULL,
   `pro_id`  INT(10) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE sp CONVERT TO CHARACTER SET utf8;

ALTER TABLE `sp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `pro_id` (`pro_id`);

ALTER TABLE `sp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

COMMIT;

