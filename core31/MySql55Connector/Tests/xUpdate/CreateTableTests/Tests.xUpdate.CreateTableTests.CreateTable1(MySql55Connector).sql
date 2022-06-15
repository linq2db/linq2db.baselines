BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `TestTable`
(
	`ID`        INT           AUTO_INCREMENT NOT NULL,
	`Field1`    VARCHAR(50)                      NULL,
	`Field2`    VARCHAR(4000)                    NULL,
	`CreatedOn` DATETIME                         NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`ID`,
	`t1`.`Field1`,
	`t1`.`Field2`,
	`t1`.`CreatedOn`
FROM
	`TestTable` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE `TestTable`

