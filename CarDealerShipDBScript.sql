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
    `rate` FLOAT NOT NULL,
    `vin` INTEGER NOT NULL
    FOREIGN KEY (`vin`) REFERENCES vehicles(`vin`)
);

# ---------------------------------------------------------------------- #
# Add info into "dealerships"                                             #
# ---------------------------------------------------------------------- #

TRUNCATE TABLE dealerships;
INSERT INTO dealerships(name,address,phone) VALUES ("Used Auto Lot", "123 street City State","(123)456-7890");
INSERT INTO dealerships(name,address,phone) VALUES ("New Auto Lot", "321 Fake st FakeCity FakeState","(321)654-0987");

# ---------------------------------------------------------------------- #
# Add info into "vehicles"                                               #
# ---------------------------------------------------------------------- #

TRUNCATE TABLE vehicles;
INSERT INTO vehicles VALUES (123,"Honda","Accord","Black",10000,TRUE);
INSERT INTO vehicles VALUES (456,"Toyota","Camry","Red",NULL,FALSE);
INSERT INTO vehicles VALUES (789,"Porsche","Cayenne","Light Blue",1000,FALSE);

# ---------------------------------------------------------------------- #
# Add info into "inventory"                                              #
# ---------------------------------------------------------------------- #

TRUNCATE TABLE inventory;
INSERT INTO inventory VALUES (1,123);
INSERT INTO inventory VALUES (1,456);
INSERT INTO inventory VALUES (2,789);

# ---------------------------------------------------------------------- #
# Add info into "sales_contracts"                                             #
# ---------------------------------------------------------------------- #

TRUNCATE TABLE sales_contracts;
INSERT INTO sales_contracts(vin) VALUES (2.99,123);
INSERT INTO sales_contracts(vin) VALUES (7.99,456);
INSERT INTO sales_contracts(vin) VALUES (3.99,789);





















