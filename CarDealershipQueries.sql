USE cd;



SELECT *
FROM dealerships;

SELECT *
FROM vehicles AS v, inventory AS i
WHERE inventory.vin

SELECT *
FROM vehicles
WHERE vin = '123';

SELECT *
FROM dealerships
WHERE dealership_id = (SELECT *
                       FROM inventory
                       WHERE inventory.dealership_id = dealerships.dealership_id)