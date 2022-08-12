BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `TestTrun`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `TestTrun`
(
	`ID`     INT     NOT NULL,
	`Field1` DECIMAL NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

TRUNCATE TABLE `TestTrun`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE `TestTrun`

