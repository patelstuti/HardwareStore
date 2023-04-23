-- Create the database/schema

CREATE SCHEMA `compretailsys` DEFAULT CHARACTER SET utf8 ;

-- Create the entity tables

CREATE TABLE `compretailsys`.`part` (
  `modelnumber` VARCHAR(45) NOT NULL,
  `typename` VARCHAR(45) NOT NULL,
  `warranty` INT NOT NULL,
  `price` DECIMAL(45) NOT NULL,
  `serialnumber` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  PRIMARY KEY (`modelnumber`),
  UNIQUE INDEX `modelnumber_UNIQUE` (`modelnumber` ASC) VISIBLE);
  
  ALTER TABLE `compretailsys`.`part` 
CHANGE COLUMN `price` `price` DECIMAL(45,2) NOT NULL ;
  
CREATE TABLE `compretailsys`.`pc` (
  `pcid` VARCHAR(45) NOT NULL,
  `builddate` VARCHAR(45) NOT NULL,
  `purpose` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pcid`),
  UNIQUE INDEX `pcid_UNIQUE` (`pcid` ASC) VISIBLE);
  
CREATE TABLE `compretailsys`.`outlet` (
  `outletid` VARCHAR(45) NOT NULL,
  `warehouseid` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`outletid`),
  UNIQUE INDEX `outletid_UNIQUE` (`outletid` ASC) VISIBLE);

CREATE TABLE `compretailsys`.`warehouse` (
  `warehouseid` VARCHAR(45) NOT NULL,
  `storagecapacity` INT NULL,
  `partcount` INT NULL,
  `supplyingwarehouseid` VARCHAR(45) NULL,
  PRIMARY KEY (`warehouseid`),
  UNIQUE INDEX `warehouseid_UNIQUE` (`warehouseid` ASC) VISIBLE);

CREATE TABLE `compretailsys`.`manufacturer` (
  `manufactuerid` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `contractstartdate` VARCHAR(45) NOT NULL,
  `contractenddate` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`manufactuerid`),
  UNIQUE INDEX `manufactuerid_UNIQUE` (`manufactuerid` ASC) VISIBLE);
  
CREATE TABLE `compretailsys`.`employee` (
  `empid` VARCHAR(45) NOT NULL,
  `fname` VARCHAR(45) NOT NULL,
  `lname` VARCHAR(45) NOT NULL,
  `dob` VARCHAR(45) NOT NULL,
  `hiredate` VARCHAR(45) NOT NULL,
  `supervisor` VARCHAR(45) NULL,
  PRIMARY KEY (`empid`),
  UNIQUE INDEX `empid_UNIQUE` (`empid` ASC) VISIBLE);

CREATE TABLE `compretailsys`.`emp_type` (
  `emptype` VARCHAR(45) NOT NULL,
  `salary` DECIMAL(45) NOT NULL,
  `deptworked` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`emptype`),
  UNIQUE INDEX `emptype_UNIQUE` (`emptype` ASC) VISIBLE);

CREATE TABLE `compretailsys`.`customer` (
  `customerid` VARCHAR(45) NOT NULL,
  `fname` VARCHAR(45) NOT NULL,
  `lname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customerid`),
  UNIQUE INDEX `customerid_UNIQUE` (`customerid` ASC) VISIBLE);

CREATE TABLE `compretailsys`.`order` (
  `ordernumber` INT NOT NULL,
  `dateplaced` VARCHAR(45) NOT NULL,
  `customerid` VARCHAR(45) NULL,
  `outletid` VARCHAR(45) NULL,
  `cardid` VARCHAR(45) NULL,
  PRIMARY KEY (`ordernumber`),
  UNIQUE INDEX `ordernumber_UNIQUE` (`ordernumber` ASC) VISIBLE);

CREATE TABLE `compretailsys`.`payment` (
  `cardid` VARCHAR(45) NOT NULL,
  `cardnumber` INT NOT NULL,
  `expdate` VARCHAR(45) NOT NULL,
  `cvv` INT NOT NULL,
  `billingname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cardid`),
  UNIQUE INDEX `cardid_UNIQUE` (`cardid` ASC) VISIBLE);
  
  ALTER TABLE `compretailsys`.`payment` 
CHANGE COLUMN `cardnumber` `cardnumber` BIGINT(128) NOT NULL ,
CHANGE COLUMN `billingname` `billingname` VARCHAR(128) NOT NULL ;

CREATE TABLE `compretailsys`.`department` (
  `deptid` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`deptid`),
  UNIQUE INDEX `deptid_UNIQUE` (`deptid` ASC) VISIBLE);

CREATE TABLE `compretailsys`.`address` (
  `addressid` VARCHAR(45) NOT NULL,
  `street` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `zipcode` INT NOT NULL,
  PRIMARY KEY (`addressid`),
  UNIQUE INDEX `addressid_UNIQUE` (`addressid` ASC) VISIBLE);

-- Create foreign keys to link entity tables

ALTER TABLE `compretailsys`.`part` 
ADD INDEX `part_manufacturer_idx` (`manufacturer` ASC) VISIBLE;
;
ALTER TABLE `compretailsys`.`part` 
ADD CONSTRAINT `part_manufacturer`
  FOREIGN KEY (`manufacturer`)
  REFERENCES `compretailsys`.`manufacturer` (`manufactuerid`)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

ALTER TABLE `compretailsys`.`outlet` 
ADD INDEX `supplying_warehouse_to_outlet_idx` (`warehouseid` ASC) VISIBLE;
;
ALTER TABLE `compretailsys`.`outlet` 
ADD CONSTRAINT `supplying_warehouse_to_outlet`
  FOREIGN KEY (`warehouseid`)
  REFERENCES `compretailsys`.`warehouse` (`warehouseid`)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

ALTER TABLE `compretailsys`.`warehouse` 
ADD INDEX `supplying_warehouse_to_warehouse_idx` (`supplyingwarehouseid` ASC) VISIBLE;
;
ALTER TABLE `compretailsys`.`warehouse` 
ADD CONSTRAINT `supplying_warehouse_to_warehouse`
  FOREIGN KEY (`supplyingwarehouseid`)
  REFERENCES `compretailsys`.`warehouse` (`warehouseid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `compretailsys`.`employee` 
ADD INDEX `emp_supervisor_idx` (`supervisor` ASC) VISIBLE;
;
ALTER TABLE `compretailsys`.`employee` 
ADD CONSTRAINT `emp_supervisor`
  FOREIGN KEY (`supervisor`)
  REFERENCES `compretailsys`.`employee` (`empid`)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

ALTER TABLE `compretailsys`.`emp_type` 
ADD INDEX `dept_worked_idx` (`deptworked` ASC) VISIBLE;
;
ALTER TABLE `compretailsys`.`emp_type` 
ADD CONSTRAINT `dept_worked`
  FOREIGN KEY (`deptworked`)
  REFERENCES `compretailsys`.`department` (`deptid`)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

ALTER TABLE `compretailsys`.`order` 
ADD INDEX `customer_who_placed_order_idx` (`customerid` ASC) VISIBLE,
ADD INDEX `outlet_who_issued_idx` (`outletid` ASC) VISIBLE,
ADD INDEX `payment_method_idx` (`cardid` ASC) VISIBLE;
;
ALTER TABLE `compretailsys`.`order` 
ADD CONSTRAINT `customer_who_placed`
  FOREIGN KEY (`customerid`)
  REFERENCES `compretailsys`.`customer` (`customerid`)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT,
ADD CONSTRAINT `outlet_who_issued`
  FOREIGN KEY (`outletid`)
  REFERENCES `compretailsys`.`outlet` (`outletid`)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT,
ADD CONSTRAINT `payment_method`
  FOREIGN KEY (`cardid`)
  REFERENCES `compretailsys`.`payment` (`cardid`)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;

-- Create relationship tables between entities

CREATE TABLE `compretailsys`.`stores` (
  `warehouseid` VARCHAR(45) NOT NULL,
  `modelnumber` VARCHAR(45) NOT NULL,
  `quantity` INT NULL,
  INDEX `storing_warehouse_idx` (`warehouseid` ASC) VISIBLE,
  INDEX `stored_part_idx` (`modelnumber` ASC) VISIBLE,
  CONSTRAINT `storing_warehouse`
    FOREIGN KEY (`warehouseid`)
    REFERENCES `compretailsys`.`warehouse` (`warehouseid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `stored_part`
    FOREIGN KEY (`modelnumber`)
    REFERENCES `compretailsys`.`part` (`modelnumber`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `compretailsys`.`made-of` (
  `pcid` VARCHAR(45) NOT NULL,
  `modelnumber` VARCHAR(45) NOT NULL,
  INDEX `pc_contains_idx` (`pcid` ASC) VISIBLE,
  INDEX `part_contained_idx` (`modelnumber` ASC) VISIBLE,
  CONSTRAINT `pc_contains`
    FOREIGN KEY (`pcid`)
    REFERENCES `compretailsys`.`pc` (`pcid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `part_contained`
    FOREIGN KEY (`modelnumber`)
    REFERENCES `compretailsys`.`part` (`modelnumber`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
	
	ALTER TABLE `compretailsys`.`made-of` 
RENAME TO  `compretailsys`.`made_of` ;

CREATE TABLE `compretailsys`.`of_type` (
  `empid` VARCHAR(45) NOT NULL,
  `emptype` VARCHAR(45) NOT NULL,
  INDEX `employee_of_type_idx` (`empid` ASC) VISIBLE,
  INDEX `emp_type_of_emp_idx` (`emptype` ASC) VISIBLE,
  CONSTRAINT `employee_of_type`
    FOREIGN KEY (`empid`)
    REFERENCES `compretailsys`.`employee` (`empid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `emp_type_of_emp`
    FOREIGN KEY (`emptype`)
    REFERENCES `compretailsys`.`emp_type` (`emptype`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `compretailsys`.`expert_in` (
  `empid` VARCHAR(45) NOT NULL,
  `modelnumber` VARCHAR(45) NOT NULL,
  INDEX `emp_expert_idx` (`empid` ASC) VISIBLE,
  INDEX `expertise_of_part_idx` (`modelnumber` ASC) VISIBLE,
  CONSTRAINT `emp_expert`
    FOREIGN KEY (`empid`)
    REFERENCES `compretailsys`.`employee` (`empid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `expertise_of_part`
    FOREIGN KEY (`modelnumber`)
    REFERENCES `compretailsys`.`part` (`modelnumber`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `compretailsys`.`warehouse_managed` (
  `empid` VARCHAR(45) NOT NULL,
  `warehouseid` VARCHAR(45) NOT NULL,
  `startdate` VARCHAR(45) NULL,
  INDEX `warehouse_managing_emp_idx` (`empid` ASC) VISIBLE,
  INDEX `managed_warehouse_idx` (`warehouseid` ASC) VISIBLE,
  CONSTRAINT `warehouse_managing_emp`
    FOREIGN KEY (`empid`)
    REFERENCES `compretailsys`.`employee` (`empid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `managed_warehouse`
    FOREIGN KEY (`warehouseid`)
    REFERENCES `compretailsys`.`warehouse` (`warehouseid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `compretailsys`.`outlet_managed` (
  `empid` VARCHAR(45) NOT NULL,
  `outletid` VARCHAR(45) NOT NULL,
  `startdate` VARCHAR(45) NULL,
  INDEX `outlet_managing_emp_idx` (`empid` ASC) VISIBLE,
  INDEX `managed_outlet_idx` (`outletid` ASC) VISIBLE,
  CONSTRAINT `outlet_managing_emp`
    FOREIGN KEY (`empid`)
    REFERENCES `compretailsys`.`employee` (`empid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `managed_outlet`
    FOREIGN KEY (`outletid`)
    REFERENCES `compretailsys`.`outlet` (`outletid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `compretailsys`.`sells_pc` (
  `outletid` VARCHAR(45) NOT NULL,
  `pcid` VARCHAR(45) NOT NULL,
  `price` DECIMAL(45) NOT NULL,
  INDEX `selling_pc_outlet_idx` (`outletid` ASC) VISIBLE,
  INDEX `pc_sold_by_outlet_idx` (`pcid` ASC) VISIBLE,
  CONSTRAINT `selling_pc_outlet`
    FOREIGN KEY (`outletid`)
    REFERENCES `compretailsys`.`outlet` (`outletid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `pc_sold_by_outlet`
    FOREIGN KEY (`pcid`)
    REFERENCES `compretailsys`.`pc` (`pcid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
	
	ALTER TABLE `compretailsys`.`sells_pc` 
CHANGE COLUMN `price` `price` DECIMAL(45,2) NOT NULL ;

CREATE TABLE `compretailsys`.`sells_part` (
  `outletid` VARCHAR(45) NOT NULL,
  `modelnumber` VARCHAR(45) NOT NULL,
  `price` DECIMAL(45) NOT NULL,
  INDEX `selling_part_outlet_idx` (`outletid` ASC) VISIBLE,
  INDEX `part_sold_by_outlet_idx` (`modelnumber` ASC) VISIBLE,
  CONSTRAINT `selling_part_outlet`
    FOREIGN KEY (`outletid`)
    REFERENCES `compretailsys`.`outlet` (`outletid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `part_sold_by_outlet`
    FOREIGN KEY (`modelnumber`)
    REFERENCES `compretailsys`.`part` (`modelnumber`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
	
	ALTER TABLE `compretailsys`.`sells_part` 
CHANGE COLUMN `price` `price` DECIMAL(45,2) NOT NULL ;

CREATE TABLE `compretailsys`.`built_by` (
  `empid` VARCHAR(45) NOT NULL,
  `pcid` VARCHAR(45) NOT NULL,
  INDEX `emp_who_built_idx` (`empid` ASC) VISIBLE,
  INDEX `pc_which_was_built_idx` (`pcid` ASC) VISIBLE,
  CONSTRAINT `emp_who_built`
    FOREIGN KEY (`empid`)
    REFERENCES `compretailsys`.`employee` (`empid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `pc_which_was_built`
    FOREIGN KEY (`pcid`)
    REFERENCES `compretailsys`.`pc` (`pcid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `compretailsys`.`order_contains_part` (
  `ordernumber` INT NOT NULL,
  `modelnumber` VARCHAR(45) NOT NULL,
  INDEX `order_having_part_idx` (`ordernumber` ASC) VISIBLE,
  INDEX `part_in_order_idx` (`modelnumber` ASC) VISIBLE,
  CONSTRAINT `order_having_part`
    FOREIGN KEY (`ordernumber`)
    REFERENCES `compretailsys`.`order` (`ordernumber`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `part_in_order`
    FOREIGN KEY (`modelnumber`)
    REFERENCES `compretailsys`.`part` (`modelnumber`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `compretailsys`.`order_contains_pc` (
  `ordernumber` INT NOT NULL,
  `pcid` VARCHAR(45) NOT NULL,
  INDEX `order_having_pc_idx` (`ordernumber` ASC) VISIBLE,
  INDEX `pc_in_order_idx` (`pcid` ASC) VISIBLE,
  CONSTRAINT `order_having_pc`
    FOREIGN KEY (`ordernumber`)
    REFERENCES `compretailsys`.`order` (`ordernumber`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `pc_in_order`
    FOREIGN KEY (`pcid`)
    REFERENCES `compretailsys`.`pc` (`pcid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `compretailsys`.`outlet_located` (
  `outletid` VARCHAR(45) NOT NULL,
  `addressid` VARCHAR(45) NOT NULL,
  INDEX `outlet_located_idx` (`outletid` ASC) VISIBLE,
  INDEX `address_of_outlet_idx` (`addressid` ASC) VISIBLE,
  CONSTRAINT `outlet_located`
    FOREIGN KEY (`outletid`)
    REFERENCES `compretailsys`.`outlet` (`outletid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `address_of_outlet`
    FOREIGN KEY (`addressid`)
    REFERENCES `compretailsys`.`address` (`addressid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `compretailsys`.`warehouse_located` (
  `warehouseid` VARCHAR(45) NOT NULL,
  `addressid` VARCHAR(45) NOT NULL,
  INDEX `warehouse_located_idx` (`warehouseid` ASC) VISIBLE,
  INDEX `address_of_warehouse_idx` (`addressid` ASC) VISIBLE,
  CONSTRAINT `warehouse_located`
    FOREIGN KEY (`warehouseid`)
    REFERENCES `compretailsys`.`warehouse` (`warehouseid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `address_of_warehouse`
    FOREIGN KEY (`addressid`)
    REFERENCES `compretailsys`.`address` (`addressid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE `compretailsys`.`emp_lives_at` (
  `empid` VARCHAR(45) NOT NULL,
  `addressid` VARCHAR(45) NOT NULL,
  INDEX `emp_located_idx` (`empid` ASC) VISIBLE,
  INDEX `address_of_emp_idx` (`addressid` ASC) VISIBLE,
  CONSTRAINT `emp_located`
    FOREIGN KEY (`empid`)
    REFERENCES `compretailsys`.`employee` (`empid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `address_of_emp`
    FOREIGN KEY (`addressid`)
    REFERENCES `compretailsys`.`address` (`addressid`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);