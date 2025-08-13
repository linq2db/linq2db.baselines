﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`DateTimeValue`,
	`BoolValue`,
	`GuidValue`,
	`BinaryValue`,
	`SmallIntValue`,
	`StringValue`
)
VALUES
(4000,1000,'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0000',NULL,0,NULL),
(4001,1001,'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0001',NULL,1,NULL),
(4002,1002,'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0002',NULL,2,NULL),
(4003,1003,'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0003',NULL,3,NULL),
(4004,1004,'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0004',NULL,4,NULL),
(4005,1005,'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0005',NULL,5,NULL),
(4006,1006,'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0006',NULL,6,NULL),
(4007,1007,'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0007',NULL,7,NULL),
(4008,1008,'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0008',NULL,8,NULL),
(4009,1009,'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0009',NULL,9,NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 4000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
INSERT ASYNC BULK `LinqDataTypes`(ID, MoneyValue, DateTimeValue, BoolValue, GuidValue, BinaryValue, SmallIntValue, StringValue)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 4000

