BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `TestTrun`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `TestTrun`
(
	`ID`     INT     NOT NULL,
	`Field1` DECIMAL NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

TRUNCATE TABLE `TestTrun`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE `TestTrun`

