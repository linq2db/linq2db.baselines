BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `TestTable`
(
	`ID`        INT          AUTO_INCREMENT NOT NULL,
	`Field1`    VARCHAR(50)                     NULL,
	`Field2`    VARCHAR(255)                    NULL,
	`CreatedOn` DATETIME                        NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `TestTable`

