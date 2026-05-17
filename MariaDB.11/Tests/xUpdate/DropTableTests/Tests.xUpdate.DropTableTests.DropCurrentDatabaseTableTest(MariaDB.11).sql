-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `DropTableTest`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_DropTableTest` PRIMARY KEY CLUSTERED (`ID`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE `DropTableTest`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

