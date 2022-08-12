-- SQL dump generated using DBML (dbml-lang.org)
-- Database: MySQL
-- Generated at: 2022-08-05T15:50:12.283Z

CREATE TABLE `product` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `group_attribute_id` int
);

CREATE TABLE `group_attribute` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `attribute` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `change_price` int,
  `group_attribute_id` int
);

ALTER TABLE `product` ADD FOREIGN KEY (`group_attribute_id`) REFERENCES `group_attribute` (`id`);

ALTER TABLE `attribute` ADD FOREIGN KEY (`group_attribute_id`) REFERENCES `group_attribute` (`id`);
