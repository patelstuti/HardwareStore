-- ENTITY TABLE INSERTS

-- Fill manufacturer table

INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('fea91d29-71b22be4be85', 'AMD', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('266b3a07-b191e7f91991', 'INTEL', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('df51c07b-25c53d3c93d3', 'NVIDIA', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('e82bbefc-f48f17551b80', 'GIGABYTE', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('7174f6ef-ea1f64969509', 'ASUS', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('2579886e-c446ab4539cd', 'SEAGATE', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('69a9178c-c87b9c222275', 'WESTERN_DIGITAL', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('0ab4b34f-a850d76aafef', 'CORSAIR', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('0a9cf0bb-e83e755fed7c', 'NZXT', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('082aff0f-8ab77168a23d', 'ASROCK', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('e961e5ff-7b63b76d42df', 'PNY', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('f669647c-214fc4bddd04', 'MSI', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('1307c276-7cbd31fbf397', 'CRUCIAL', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('790c40ab-7179cc49078d', 'KINGSTON', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('435671fa-738ee9f9c430', 'COOLER_MASTER', '01/01/2023', '01/01/2024');
INSERT INTO `compretailsys`.`manufacturer` (`manufactuerid`, `name`, `contractstartdate`, `contractenddate`) VALUES ('05181b5f-36e4a17f1824', 'EVGA', '01/01/2023', '01/01/2024');

-- Fill address table

	-- Addresses for employees
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('61c505', '887 South Middle River Avenue', 'Oxford', 'MS', '38655');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('1dd86b', '7 West Bowman Street', 'Strongsville', 'OH', '44136');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('1cff84', '162 Swanson Street', 'Salisbury', 'MD', '21801');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('97067a', '9163 Liberty St.', 'Kearny', 'NJ', '07032');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('0cb09e', '9827 Victoria St.', 'Schaumburg', 'IL', '60193');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('046a6a', '654 George St.', 'Copperas Cove', 'TX', '76522');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('8ad8a2', '32 Bishop St.', 'South Bend', 'IN', '46614');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('f25ae1', '554 NW. Fifth Dr', 'Opa Locka', 'FL', '33054');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('fe2d06', '82 Ridgeview St.', 'Merrillville', 'IN', '46410');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('e0c0ae', '7 Heritage Drive', 'Camden', 'NJ', '08105');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('c35359', '12 Spruce Court', 'Avon', 'IN', '46123');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('09b18c', '9519 West Cleveland Dr.', 'San Diego', 'CA', '92111');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('09b913', '7223 Hillcrest St.', 'Orlando', 'FL', '32806');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('a27c41', '650 La Sierra Drive', 'Cordova', 'TN', '38016');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('380696', '8233 Mayflower Drive', 'Enterprise', 'AL', '36330');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('54e09e', '96 Temple Road', 'Rockville Centre', 'NY', '11570');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('6baccd', '721 Prospect Lane', 'Sunnyside', 'NY', '11104');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('3a8d62', '9640 Miles Street', 'King Of Prussia', 'PA', '19406');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('67a465', '55 Andover Street', 'Rockaway', 'NJ', '07866');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('5a6cf7', '8694 Washington Court', 'Arlington', 'MA', '02474');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('f34l90', '527 South Union Street', 'Whitestone', 'NY', '11357');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('e39ldi', '489 Sunset St.', 'Livonia', 'MI', '48150');

	-- Addresses for outlets/warehouse
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('8ee277', '1234 Business Drive', 'New York City', 'NY', '10001');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('0a545e', '1234 Business Drive', 'Los Angeles', 'CA', '90001');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('30aa73', '1234 Business Drive', 'Chicago', 'IL', '60601');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('be51d5', '1234 Business Drive', 'Houston', 'TX', '77001');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('d34233', '1234 Business Drive', 'Phoenix', 'AZ', '85001');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('c23c15', '1234 Business Drive', 'Philadelphia', 'PA', '19019');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('6e2156', '1234 Business Drive', 'San Antonio', 'TX', '78201');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('fe1d71', '1234 Business Drive', 'San Diego', 'CA', '92101');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('bca5f7', '1234 Business Drive', 'Dallas', 'TX', '75201');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('3422d0', '1234 Business Drive', 'San Jose', 'CA', '95101');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('320b77', '1234 Business Drive', 'Atlanta', 'GA', '30303');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('33fe11', '1234 Business Drive', 'Austin', 'TX', '78681');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('18b3e5', '1234 Business Drive', 'Pittsburg', 'PA', '15122');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('6575ed', '1234 Business Drive', 'Memphis', 'TN', '38103');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('049428', '1234 Business Drive', 'Tampa', 'FL', '33602');
INSERT INTO `compretailsys`.`address` (`addressid`, `street`, `city`, `state`, `zipcode`) VALUES ('ea1806', '1234 Business Drive', 'Orlando', 'FL', '32801');

-- Fill customer table

INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('f7e648', 'Kamryn', 'Knight'     );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('e19abb', 'Kimora', 'Young'      );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('c643fe', 'Roberto ', 'Duke'     );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('124b87', 'Rey', 'Saunders'      );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('9b088d', 'Livia ', 'Carroll'    );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('57c796', 'Keagan', 'Perez'      );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('66932a', 'Christian', 'Thornton');
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('2ae162', 'Kenley', 'Riddle'     );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('ef83f6', 'Isai', 'Rivera'       );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('01dd47', 'Nayeli', 'Strickland' );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('ad972f', 'Jermaine', 'Taylor'   );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('c355b5', 'Justine', 'Barnett'   );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('0c8ce8', 'Leila', 'Hunt'        );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('d22569', 'Chaim', 'Moses'       );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('962227', 'Eve', 'Reynolds'      );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('df7537', 'Justin', 'Caldwell'   );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('81dc10', 'Chris', 'Case'        );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('eacb09', 'Josh', 'Mathews'      );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('a36538', 'Lee', 'Bowen'         );
INSERT INTO `compretailsys`.`customer` (`customerid`, `fname`, `lname`) VALUES ('3aaf58', 'Norah', 'Drake'       );

-- Fill department table

INSERT INTO `compretailsys`.`department` VALUES ('dept001','ACCOUNTING');
INSERT INTO `compretailsys`.`department` VALUES ('dept002','INFORMATION TECHNOLOGY');
INSERT INTO `compretailsys`.`department` VALUES ('dept003','ENGINEERING');
INSERT INTO `compretailsys`.`department` VALUES ('dept004','SALES');
INSERT INTO `compretailsys`.`department` VALUES ('dept005','MARKETING');
INSERT INTO `compretailsys`.`department` VALUES ('dept006','HUMAN RESOURCES');

-- Fill emp_type table

INSERT INTO `compretailsys`.`emp_type` VALUES ('TECHNICIAN',70000.00,'dept003');
INSERT INTO `compretailsys`.`emp_type` VALUES ('MANAGER',70000.00,'dept006');
INSERT INTO `compretailsys`.`emp_type` VALUES ('SALESPERSON',60000.00,'dept004');
INSERT INTO `compretailsys`.`emp_type` VALUES ('MARKETING OFFICER',60000.00,'dept005');
INSERT INTO `compretailsys`.`emp_type` VALUES ('ACCOUNTANT',80000.00,'dept001');
INSERT INTO `compretailsys`.`emp_type` VALUES ('RESOURCE SPECIALIST',90000.00,'dept006');
INSERT INTO `compretailsys`.`emp_type` VALUES ('DEVELOPER',100000.00,'dept002');
INSERT INTO `compretailsys`.`emp_type` VALUES ('PROJECT MANAGER',85000.00,'dept002');

-- Fill employee TABLE

INSERT INTO `compretailsys`.`employee` VALUES ('emp0001','Mia','Hancock','1980-01-15','2023-03-05',NULL);
INSERT INTO `compretailsys`.`employee` VALUES ('emp0002','Kayden','Wiggins','1980-01-16','2023-03-06',NULL);
INSERT INTO `compretailsys`.`employee` VALUES ('emp0003','Rene','Palmer','1980-01-17','2023-03-07',NULL);
INSERT INTO `compretailsys`.`employee` VALUES ('emp0004','Cade','Yeager','1980-01-18','2023-03-08','emp0001');
INSERT INTO `compretailsys`.`employee` VALUES ('emp0005','Ari','Whitney','1980-01-19','2023-03-09','emp0001');
INSERT INTO `compretailsys`.`employee` VALUES ('emp0006','Isaac','Howard','1980-01-20','2023-03-10','emp0001');
INSERT INTO `compretailsys`.`employee` VALUES ('emp0007','Weston','Barron','1980-01-21','2023-03-11','emp0002');
INSERT INTO `compretailsys`.`employee` VALUES ('emp0008','Jakob','Castaneda','1980-01-22','2023-03-12','emp0002');
INSERT INTO `compretailsys`.`employee` VALUES ('emp0009','Quentin','Campos','1980-01-23','2023-03-13','emp0003');
INSERT INTO `compretailsys`.`employee` VALUES ('emp0010','Sage','Barnett','1980-01-24','2023-03-14','emp0003');
INSERT INTO `compretailsys`.`employee` VALUES ('emp0011','Dayana','Ross','1980-01-25','2023-03-15','emp0003');
INSERT INTO `compretailsys`.`employee` VALUES ('emp0012','Alena','Roberson','1980-01-26','2023-03-16','emp0003');

-- Fill warehouse table

INSERT INTO `compretailsys`.`warehouse` VALUES ('warehouse0001',20000,3400,NULL);
INSERT INTO `compretailsys`.`warehouse` VALUES ('warehouse0002',20000,3400,NULL);
INSERT INTO `compretailsys`.`warehouse` VALUES ('warehouse0003',20000,3400,'warehouse0001');
INSERT INTO `compretailsys`.`warehouse` VALUES ('warehouse0004',20000,3400,'warehouse0001');
INSERT INTO `compretailsys`.`warehouse` VALUES ('warehouse0005',35000,3400,'warehouse0001');
INSERT INTO `compretailsys`.`warehouse` VALUES ('warehouse0006',35000,3400,'warehouse0002');
INSERT INTO `compretailsys`.`warehouse` VALUES ('warehouse0007',35000,3400,'warehouse0002');
INSERT INTO `compretailsys`.`warehouse` VALUES ('warehouse0008',35000,3400,'warehouse0002');

-- Fill outlet table

INSERT INTO `compretailsys`.`outlet` VALUES ('outlet0001','warehouse0001');
INSERT INTO `compretailsys`.`outlet` VALUES ('outlet0002','warehouse0002');
INSERT INTO `compretailsys`.`outlet` VALUES ('outlet0003','warehouse0003');
INSERT INTO `compretailsys`.`outlet` VALUES ('outlet0004','warehouse0004');
INSERT INTO `compretailsys`.`outlet` VALUES ('outlet0005','warehouse0005');
INSERT INTO `compretailsys`.`outlet` VALUES ('outlet0006','warehouse0006');
INSERT INTO `compretailsys`.`outlet` VALUES ('outlet0007','warehouse0007');
INSERT INTO `compretailsys`.`outlet` VALUES ('outlet0008','warehouse0008');

-- Fill part table

INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0001','CPU',2,499.99,'skuamdryzen7800X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0002','CPU',2,499.99,'skuamdryzen7800X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0003','CPU',2,499.99,'skuamdryzen7800X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0004','CPU',2,499.99,'skuamdryzen7800X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0005','CPU',2,499.99,'skuamdryzen7800X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0006','CPU',2,799.99,'skuamdryzen7900X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0007','CPU',2,799.99,'skuamdryzen7900X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0008','CPU',2,799.99,'skuamdryzen7900X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0009','CPU',2,799.99,'skuamdryzen7900X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0010','CPU',2,799.99,'skuamdryzen7900X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0011','CPU',2,1099.99,'skuamdryzen9000X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0012','CPU',2,1099.99,'skuamdryzen9000X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0013','CPU',2,1099.99,'skuamdryzen9000X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0014','CPU',2,1099.99,'skuamdryzen9000X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0015','CPU',2,1099.99,'skuamdryzen9000X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('amdryzencpu0016','CPU',2,1099.99,'skuamdryzen9000X','fea91d29-71b22be4be85');
INSERT INTO `compretailsys`.`part` VALUES ('inteli9cpu0001','CPU',2,499.99,'skuinteli9gen10','266b3a07-b191e7f91991');
INSERT INTO `compretailsys`.`part` VALUES ('inteli9cpu0002','CPU',2,499.99,'skuinteli9gen10','266b3a07-b191e7f91991');
INSERT INTO `compretailsys`.`part` VALUES ('inteli9cpu0003','CPU',2,499.99,'skuinteli9gen10','266b3a07-b191e7f91991');
INSERT INTO `compretailsys`.`part` VALUES ('inteli9cpu0004','CPU',2,499.99,'skuinteli9gen10','266b3a07-b191e7f91991');
INSERT INTO `compretailsys`.`part` VALUES ('inteli9cpu0005','CPU',2,499.99,'skuinteli9gen10','266b3a07-b191e7f91991');
INSERT INTO `compretailsys`.`part` VALUES ('inteli9cpu0006','CPU',2,799.99,'skuinteli9gen11','266b3a07-b191e7f91991');
INSERT INTO `compretailsys`.`part` VALUES ('inteli9cpu0007','CPU',2,799.99,'skuinteli9gen11','266b3a07-b191e7f91991');
INSERT INTO `compretailsys`.`part` VALUES ('inteli9cpu0008','CPU',2,1099.99,'skuinteli9gen12','266b3a07-b191e7f91991');
INSERT INTO `compretailsys`.`part` VALUES ('inteli9cpu0009','CPU',2,1099.99,'skuinteli9gen12','266b3a07-b191e7f91991');
INSERT INTO `compretailsys`.`part` VALUES ('inteli9cpu0010','CPU',2,1099.99,'skuinteli9gen12','266b3a07-b191e7f91991');

-- Fill pc table

INSERT INTO `compretailsys`.`pc` VALUES ('pc0001','2023-04-01','Gaming');
INSERT INTO `compretailsys`.`pc` VALUES ('pc0002','2023-04-02','Gaming');
INSERT INTO `compretailsys`.`pc` VALUES ('pc0003','2023-04-03','Video Production');
INSERT INTO `compretailsys`.`pc` VALUES ('pc0004','2023-04-04','Audio Production');
INSERT INTO `compretailsys`.`pc` VALUES ('pc0005','2023-04-05','Live Streaming');
INSERT INTO `compretailsys`.`pc` VALUES ('pc0006','2023-04-06','Live Streaming');

-- Fill payment table

INSERT INTO `compretailsys`.`payment` VALUES ('card00001',4341201753363060,'01/25',447,'Kamryn Knight');
INSERT INTO `compretailsys`.`payment` VALUES ('card00002',4391232772288054 ,'02/25',927,'Kimora Young');
INSERT INTO `compretailsys`.`payment` VALUES ('card00003',4275668004760090,'02/25',171,'Roberto Duke');
INSERT INTO `compretailsys`.`payment` VALUES ('card00004',4132126855155186,'02/25',914,'Rey Saunders');
INSERT INTO `compretailsys`.`payment` VALUES ('card00005',4694110379541220,'05/26',932,'Livia Carroll');
INSERT INTO `compretailsys`.`payment` VALUES ('card00006',3497960264630806,'05/26',407,'Keagan Perez');
INSERT INTO `compretailsys`.`payment` VALUES ('card00007',4970837460620902,'05/26',139,'Christian Thornton');
INSERT INTO `compretailsys`.`payment` VALUES ('card00008',5126664072885388,'07/26',813,'Kenley Riddle');
INSERT INTO `compretailsys`.`payment` VALUES ('card00009',5193059959046626,'08/26',468,'Isai Rivera');
INSERT INTO `compretailsys`.`payment` VALUES ('card00010',5169908018666008,'08/26',486,'Nayeli Strickland');

-- Fill order table

INSERT INTO `compretailsys`.`order` VALUES (1000023456,'2023-05-01','f7e648','outlet0001','card00001');
INSERT INTO `compretailsys`.`order` VALUES (1000023457,'2023-05-01','e19abb','outlet0001','card00002');
INSERT INTO `compretailsys`.`order` VALUES (1000023458,'2023-05-01','c643fe','outlet0001','card00003');
INSERT INTO `compretailsys`.`order` VALUES (1000023459,'2023-05-01','124b87','outlet0002','card00004');
INSERT INTO `compretailsys`.`order` VALUES (1000023460,'2023-05-02','9b088d','outlet0003','card00005');
INSERT INTO `compretailsys`.`order` VALUES (1000023461,'2023-05-02','57c796','outlet0004','card00006');
INSERT INTO `compretailsys`.`order` VALUES (1000023462,'2023-05-03','66932a','outlet0005','card00007');
INSERT INTO `compretailsys`.`order` VALUES (1000023463,'2023-05-04','2ae162','outlet0005','card00008');
INSERT INTO `compretailsys`.`order` VALUES (1000023464,'2023-05-05','ef83f6','outlet0006','card00009');
INSERT INTO `compretailsys`.`order` VALUES (1000023465,'2023-05-05','01dd47','outlet0007','card00010');


-- RELATIONSHIP TABLE INSERTS

-- Fill stores table

INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0001','amdryzencpu0001',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0001','amdryzencpu0002',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0002','amdryzencpu0003',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0002','amdryzencpu0004',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0003','amdryzencpu0005',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0003','amdryzencpu0006',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0004','amdryzencpu0007',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0004','amdryzencpu0008',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0005','amdryzencpu0009',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0005','amdryzencpu0010',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0006','amdryzencpu0011',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0006','amdryzencpu0012',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0007','amdryzencpu0013',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0007','amdryzencpu0014',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0008','amdryzencpu0015',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0008','amdryzencpu0016',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0001','inteli9cpu0001',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0001','inteli9cpu0002',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0002','inteli9cpu0003',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0002','inteli9cpu0004',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0003','inteli9cpu0005',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0003','inteli9cpu0006',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0004','inteli9cpu0007',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0004','inteli9cpu0008',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0005','inteli9cpu0009',30);
INSERT INTO `compretailsys`.`stores` VALUES ('warehouse0005','inteli9cpu0010',30);

-- Fill made_of table

INSERT INTO `compretailsys`.`made_of` VALUES ('pc0001','amdryzencpu0001');
INSERT INTO `compretailsys`.`made_of` VALUES ('pc0002','amdryzencpu0005');
INSERT INTO `compretailsys`.`made_of` VALUES ('pc0003','amdryzencpu0010');
INSERT INTO `compretailsys`.`made_of` VALUES ('pc0004','amdryzencpu0016');
INSERT INTO `compretailsys`.`made_of` VALUES ('pc0005','inteli9cpu0005');
INSERT INTO `compretailsys`.`made_of` VALUES ('pc0006','inteli9cpu0010');

-- Fill of_type table

INSERT INTO `compretailsys`.`of_type` VALUES ('emp0001','MANAGER');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0002','MANAGER');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0003','MANAGER');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0004','TECHNICIAN');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0005','TECHNICIAN');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0006','TECHNICIAN');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0007','SALESPERSON');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0008','MARKETING OFFICER');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0009','ACCOUNTANT');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0010','RESOURCE SPECIALIST');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0011','DEVELOPER');
INSERT INTO `compretailsys`.`of_type` VALUES ('emp0012','PROJECT MANAGER');

-- Fill expert_in table

INSERT INTO `compretailsys`.`expert_in` VALUES ('emp0004','amdryzencpu0010');
INSERT INTO `compretailsys`.`expert_in` VALUES ('emp0005','amdryzencpu0016');
INSERT INTO `compretailsys`.`expert_in` VALUES ('emp0006','inteli9cpu0010');
INSERT INTO `compretailsys`.`expert_in` VALUES ('emp0004','inteli9cpu0008');
INSERT INTO `compretailsys`.`expert_in` VALUES ('emp0005','inteli9cpu0009');
INSERT INTO `compretailsys`.`expert_in` VALUES ('emp0006','amdryzencpu0004');

-- Fill warehouse_managed table

INSERT INTO `compretailsys`.`warehouse_managed` VALUES ('emp0001','warehouse0001','2023-03-07');
INSERT INTO `compretailsys`.`warehouse_managed` VALUES ('emp0001','warehouse0002','2023-03-07');
INSERT INTO `compretailsys`.`warehouse_managed` VALUES ('emp0001','warehouse0003','2023-03-07');
INSERT INTO `compretailsys`.`warehouse_managed` VALUES ('emp0001','warehouse0004','2023-03-07');
INSERT INTO `compretailsys`.`warehouse_managed` VALUES ('emp0002','warehouse0005','2023-03-07');
INSERT INTO `compretailsys`.`warehouse_managed` VALUES ('emp0002','warehouse0006','2023-03-07');
INSERT INTO `compretailsys`.`warehouse_managed` VALUES ('emp0002','warehouse0007','2023-03-07');
INSERT INTO `compretailsys`.`warehouse_managed` VALUES ('emp0002','warehouse0008','2023-03-07');

-- Fill outlet_managed table

INSERT INTO `compretailsys`.`outlet_managed` VALUES ('emp0003','outlet0001','2023-03-09');
INSERT INTO `compretailsys`.`outlet_managed` VALUES ('emp0003','outlet0002','2023-03-09');
INSERT INTO `compretailsys`.`outlet_managed` VALUES ('emp0003','outlet0003','2023-03-09');
INSERT INTO `compretailsys`.`outlet_managed` VALUES ('emp0003','outlet0004','2023-03-09');
INSERT INTO `compretailsys`.`outlet_managed` VALUES ('emp0001','outlet0005','2023-03-09');
INSERT INTO `compretailsys`.`outlet_managed` VALUES ('emp0002','outlet0006','2023-03-09');
INSERT INTO `compretailsys`.`outlet_managed` VALUES ('emp0002','outlet0007','2023-03-09');
INSERT INTO `compretailsys`.`outlet_managed` VALUES ('emp0003','outlet0008','2023-03-09');

-- Fill sells_pc table

INSERT INTO `compretailsys`.`sells_pc` VALUES ('outlet0003','pc0001',1000.00);
INSERT INTO `compretailsys`.`sells_pc` VALUES ('outlet0004','pc0002',1000.00);
INSERT INTO `compretailsys`.`sells_pc` VALUES ('outlet0005','pc0003',2000.99);
INSERT INTO `compretailsys`.`sells_pc` VALUES ('outlet0006','pc0004',2000.99);
INSERT INTO `compretailsys`.`sells_pc` VALUES ('outlet0007','pc0005',2759.99);
INSERT INTO `compretailsys`.`sells_pc` VALUES ('outlet0008','pc0006',2759.99);

-- Fill sells_part table

INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0001','amdryzencpu0010',799.99);
INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0001','amdryzencpu0011',1099.99);
INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0002','amdryzencpu0012',1099.99);
INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0002','amdryzencpu0013',1099.99);
INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0003','amdryzencpu0014',1099.99);
INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0003','amdryzencpu0015',1099.99);
INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0004','amdryzencpu0016',1099.99);
INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0005','inteli9cpu0001',499.99);
INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0006','inteli9cpu0002',499.99);
INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0007','inteli9cpu0003',499.99);
INSERT INTO `compretailsys`.`sells_part` VALUES ('outlet0008','inteli9cpu0004',499.99);

-- Fill built_by table

INSERT INTO `compretailsys`.`built_by` VALUES ('emp0004','pc0001');
INSERT INTO `compretailsys`.`built_by` VALUES ('emp0005','pc0002');
INSERT INTO `compretailsys`.`built_by` VALUES ('emp0006','pc0003');
INSERT INTO `compretailsys`.`built_by` VALUES ('emp0004','pc0004');
INSERT INTO `compretailsys`.`built_by` VALUES ('emp0005','pc0005');
INSERT INTO `compretailsys`.`built_by` VALUES ('emp0006','pc0006');

-- Fill order_contains_pc table

INSERT INTO `compretailsys`.`order_contains_pc` VALUES (1000023456,'pc0001');
INSERT INTO `compretailsys`.`order_contains_pc` VALUES (1000023457,'pc0002');
INSERT INTO `compretailsys`.`order_contains_pc` VALUES (1000023458,'pc0003');
INSERT INTO `compretailsys`.`order_contains_pc` VALUES (1000023459,'pc0004');

-- Fill order_contains_part table

INSERT INTO `compretailsys`.`order_contains_part` VALUES (1000023456,'amdryzencpu0010');
INSERT INTO `compretailsys`.`order_contains_part` VALUES (1000023457,'amdryzencpu0011');
INSERT INTO `compretailsys`.`order_contains_part` VALUES (1000023458,'amdryzencpu0012');
INSERT INTO `compretailsys`.`order_contains_part` VALUES (1000023459,'amdryzencpu0013');
INSERT INTO `compretailsys`.`order_contains_part` VALUES (1000023460,'amdryzencpu0014');
INSERT INTO `compretailsys`.`order_contains_part` VALUES (1000023461,'amdryzencpu0016');
INSERT INTO `compretailsys`.`order_contains_part` VALUES (1000023462,'inteli9cpu0001');
INSERT INTO `compretailsys`.`order_contains_part` VALUES (1000023463,'inteli9cpu0002');
INSERT INTO `compretailsys`.`order_contains_part` VALUES (1000023464,'inteli9cpu0003');
INSERT INTO `compretailsys`.`order_contains_part` VALUES (1000023465,'inteli9cpu0004');

-- Fill warehouse_located table

INSERT INTO `compretailsys`.`warehouse_located` VALUES ('warehouse0001','8ee277');
INSERT INTO `compretailsys`.`warehouse_located` VALUES ('warehouse0002','0a545e');
INSERT INTO `compretailsys`.`warehouse_located` VALUES ('warehouse0003','30aa73');
INSERT INTO `compretailsys`.`warehouse_located` VALUES ('warehouse0004','be51d5');
INSERT INTO `compretailsys`.`warehouse_located` VALUES ('warehouse0005','d34233');
INSERT INTO `compretailsys`.`warehouse_located` VALUES ('warehouse0006','c23c15');
INSERT INTO `compretailsys`.`warehouse_located` VALUES ('warehouse0007','6e2156');
INSERT INTO `compretailsys`.`warehouse_located` VALUES ('warehouse0008','fe1d71');

-- Fill outlet_located table

INSERT INTO `compretailsys`.`outlet_located` VALUES ('outlet0001','bca5f7');
INSERT INTO `compretailsys`.`outlet_located` VALUES ('outlet0002','3422d0');
INSERT INTO `compretailsys`.`outlet_located` VALUES ('outlet0003','320b77');
INSERT INTO `compretailsys`.`outlet_located` VALUES ('outlet0004','33fe11');
INSERT INTO `compretailsys`.`outlet_located` VALUES ('outlet0005','18b3e5');
INSERT INTO `compretailsys`.`outlet_located` VALUES ('outlet0006','6575ed');
INSERT INTO `compretailsys`.`outlet_located` VALUES ('outlet0007','049428');
INSERT INTO `compretailsys`.`outlet_located` VALUES ('outlet0008','ea1806');

-- Fill emp_lives_at table

INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0001','61c505');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0002','1dd86b');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0003','1cff84');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0004','97067a');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0005','0cb09e');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0006','046a6a');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0007','8ad8a2');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0008','f25ae1');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0009','fe2d06');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0010','e0c0ae');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0011','c35359');
INSERT INTO `compretailsys`.`emp_lives_at` VALUES ('emp0012','09b18c');
