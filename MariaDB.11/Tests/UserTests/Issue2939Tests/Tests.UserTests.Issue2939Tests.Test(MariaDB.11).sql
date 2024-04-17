BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Adsl`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Adsl`
(
	`Id`       INT NOT NULL,
	`IdClient` INT     NULL,

	CONSTRAINT `PK_Adsl` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Client`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Client`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Client` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`adsl_1`.`Id`
FROM
	`Adsl` `adsl_1`
		INNER JOIN `Client` `client_1` ON `adsl_1`.`IdClient` = `client_1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Client`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Adsl`

