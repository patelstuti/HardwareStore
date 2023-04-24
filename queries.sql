--functional requirement 1
/* add a part*/
INSERT INTO `part` 
VALUES ('inteli9cpu0012','CPU',2,999.99,'skuinteli9gen14','266b3a07-b191e7f91991');

/*update the part's price to 999.99 given the model number = inteli9cpu0010*/
UPDATE `part` 
SET price = '999.99' 
WHERE modelnumber = 'inteli9cpu0010';

/*remove a part given their model number, also delete it's instance from all the other tables where it is stored*/
DELETE FROM `stores`
where modelnumber = 'amdryzencpu0007';
DELETE FROM `part` 
WHERE modelnumber = 'amdryzencpu0007';

-- functional requirement 2
/*Manufacturer able to view all the parts they manufacture using the manufacture ID*/
SELECT * 
FROM manufacturer 
WHERE manufactuerid = 'df51c07b-25c53d3c93d3';

SELECT *
FROM `part` 
WHERE manufacturer = '266b3a07-b191e7f91991';


-- functional requirement 4
/* add an outlet*/
INSERT INTO `outlet` VALUES ('outlet0010','warehouse0010');

/*update the outlet's supplying warehouse to be updated given the outlet ID*/
UPDATE `outlet`
SET warehouseid = 'warehouse0004'
WHERE outletid = 'outlet0005';

/*remove an outlet given outletID, also delete it's instance from all the other child tables where it is stored*/
DELETE FROM `outlet_located`
WHERE outletID = 'outlet0008';

DELETE FROM `outlet_managed`
WHERE outletID = 'outlet0008';

DELETE FROM `sells_part`
WHERE outletID = 'outlet0008';

DELETE FROM `sells_pc`
WHERE outletID = 'outlet0008';

DELETE FROM `outlet` 
WHERE outletID = 'outlet0008';


-- functional requirement 5
/* add a warehouse*/
INSERT INTO `warehouse` VALUES ('warehouse0010',36000,2400,'warehouse0004');

/*update the warehouse's partcount to 10000 given the warehouse ID*/
UPDATE `warehouse`
SET partcount = '10000'
WHERE warehouseid = 'warehouse0005';

/*update the warehouse's capacity to 40000 given the warehouse ID*/
UPDATE `warehouse`
SET storagecapacity = '40000'
WHERE warehouseid = 'warehouse0006';

/*update the warehouse's supplying warehouseID given the warehouse ID*/
UPDATE `warehouse`
SET supplyingwarehouseid = 'warehouse0006'
WHERE warehouseid = 'warehouse0008';

/*remove a warehouse given its id, also delete it's instance from all the other tables where it is stored*/
DELETE FROM `outlet` 
WHERE warehouseID = 'warehouse0009';


-- functional requirement 6
/*add a manufacturer*/
INSERT INTO `manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('0a7da3cb-93afff90127c', 'Sony', '01/01/2022', '01/01/2024');

/*update a manufacturer's start date given the manufacturer id*/
UPDATE `manufacturer`
SET contractstartdate = '01/01/22'
WHERE manufactuerid = '69a9178c-c87b9c222275';

/*update a manufacturer's end date given the manufacturer id*/
UPDATE `manufacturer`
SET contractenddate = '06/01/24'
WHERE manufactuerid = '082aff0f-8ab77168a23d';

/*delete a manufacturer given their ID*/
DELETE FROM `manufacturer`
WHERE manufactuerid = '0ab4b34f-a850d76aafef';


-- functional requirement 7
/*add an employee and also add their role in the of_type table*/
INSERT INTO `employee` VALUES ('emp0013','Samay','Raina','1996-01-20','2023-03-10','emp0004');
INSERT INTO `of_type` VALUES ('emp0013','TECHNICIAN');

/*update an employee's change of position*/
UPDATE of_type
SET emptype = 'DEVELOPER'
WHERE empid = 'emp0006';


-- functional requirement 8
/*customers can see the which parts the PC is made of*/
select * from `made_of`
WHERE pcid = 'pc0003';

/*customers can see the available parts in the outlets*/
SELECT P.modelnumber, P.typename, P.warranty, P.price, P.serialnumber, P.manufacturer
FROM `part` P, `sells_part` S
WHERE S.modelnumber = P.modelnumber AND S.outletid = 'outlet0003';


-- functional requirement 9, 10
/*add an order for pc*/
INSERT INTO `payment` VALUES ('card00011',6009516990801866,'08/29',498,'Jermaine Taylor');
INSERT INTO `order` VALUES (1000023466,'2023-05-06','ad972f','outlet0003','card00011');
INSERT INTO `order_contains_pc` VALUES (1000023466,'pc0002');

/*add an order for part*/
INSERT INTO `payment` VALUES ('card00012',2049516990666008,'10/25',589,'Justine Barnett');
INSERT INTO `order` VALUES (1000023467,'2023-05-09','c355b5','outlet0002','card00012');
INSERT INTO `order_contains_part` VALUES (1000023467,'inteli9cpu0008');

/*delete an order and also it's child instances given the order number*/
DELETE FROM `order_contains_part`
WHERE ordernumber = '1000023461';

DELETE FROM `order_contains_pc`
WHERE ordernumber = '1000023461';

DELETE FROM `order`
WHERE ordernumber = '1000023461';


-- functional requirement 11
/*update quantity for available part*/
UPDATE `stores`
SET quantity = '20'
WHERE warehouseid = 'warehouse0005' AND modelnumber = 'amdryzencpu0010';