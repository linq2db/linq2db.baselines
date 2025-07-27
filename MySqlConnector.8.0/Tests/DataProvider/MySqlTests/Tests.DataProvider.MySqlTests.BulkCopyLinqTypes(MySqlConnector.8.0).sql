BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SET GLOBAL local_infile=ON

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
(4000,CAST(1000 AS DECIMAL(4)),'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0000',NULL,0,NULL),
(4001,CAST(1001 AS DECIMAL(4)),'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0001',NULL,1,NULL),
(4002,CAST(1002 AS DECIMAL(4)),'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0002',NULL,2,NULL),
(4003,CAST(1003 AS DECIMAL(4)),'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0003',NULL,3,NULL),
(4004,CAST(1004 AS DECIMAL(4)),'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0004',NULL,4,NULL),
(4005,CAST(1005 AS DECIMAL(4)),'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0005',NULL,5,NULL),
(4006,CAST(1006 AS DECIMAL(4)),'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0006',NULL,6,NULL),
(4007,CAST(1007 AS DECIMAL(4)),'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0007',NULL,7,NULL),
(4008,CAST(1008 AS DECIMAL(4)),'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0008',NULL,8,NULL),
(4009,CAST(1009 AS DECIMAL(4)),'2001-01-11 01:11:21.100',1,'233bf399-9710-4e79-873d-2ec7bf1e0009',NULL,9,NULL)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 4000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SET GLOBAL local_infile=ON

BeforeExecute
INSERT BULK `LinqDataTypes`(ID, MoneyValue, DateTimeValue, BoolValue, GuidValue, BinaryValue, SmallIntValue, StringValue

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 4000

