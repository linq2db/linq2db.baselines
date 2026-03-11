-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `TestTrun`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE `TestTrun`
(
	`ID`     INT             NOT NULL,
	`Field1` DECIMAL(29, 10) NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

TRUNCATE TABLE `TestTrun`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE `TestTrun`

