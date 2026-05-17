-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `DropTableTest`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_DropTableTest` PRIMARY KEY CLUSTERED (`ID`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `testdata`.`DropTableTest`
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
	`testdata`.`DropTableTest` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE `testdata`.`DropTableTest`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`
FROM
	`testdata`.`DropTableTest` `t1`

