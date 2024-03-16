﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Adsl`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Adsl`
(
	`Id`       INT NOT NULL,
	`IdClient` INT     NULL,

	CONSTRAINT `PK_Adsl` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Client`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Client`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Client` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`serv`.`Id`
FROM
	`Adsl` `serv`
		INNER JOIN `Client` `client_1` ON `serv`.`IdClient` = `client_1`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Client`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Adsl`

