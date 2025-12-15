-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `TestTrun`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE `TestTrun`
(
	`ID`     INT             NOT NULL,
	`Field1` DECIMAL(29, 10) NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

TRUNCATE TABLE `TestTrun`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE `TestTrun`

