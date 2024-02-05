BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestTrun`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `TestTrun`
(
	`ID`     INT     NOT NULL,
	`Field1` DECIMAL NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

TRUNCATE TABLE `TestTrun`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `TestTrun`

