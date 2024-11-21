# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealership                                   #
# ---------------------------------------------------------------------- #
DROP DATABASE IF EXISTS cd;

CREATE DATABASE IF NOT EXISTS cd;

USE cd;

# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #
# ---------------------------------------------------------------------- #
# Add table "dealerships"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `dealerships` (
    `dealership_id` INTEGER NOT NULL, AUTO_INCREMENT,
    `name` VARCHAR(50),
    `address` VARCHAR(50),
    `phone` VARCHAR(12),
    PRIMARY (`dealership_id`)
);

# ---------------------------------------------------------------------- #
# Add table "vehicles"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `vehicles` (
    `vin` INTEGER NOT NULL,
    `make` VARCHAR(15),
    `model` VARCHAR(15),
    `color` VARCHAR(10),
    `miles` INTEGER,
    `sold` BOOLEAN,
    PRIMARY (`vin`)
);

#---------------------------------------------------------------------- #
# Add table "inventory"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `inventory` (
    `dealership_id` INTEGER NOT NULL,
    `vin` INTEGER NOT NULL
    FOREIGN KEY (`dealership_id`) REFERENCES dealerships(`dealership_id`),
    FOREIGN KEY (`vin`) REFERENCES vehicles(`vin`)

);

#---------------------------------------------------------------------- #
# Add table "sales_contracts"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `sales_contracts` (
    `id` INTEGER NOT NULL, AUTO_INCREMENT,
    `vin` INTEGER NOT NULL
    FOREIGN KEY (`vin`) REFERENCES vehicles(`vin`)
);






















