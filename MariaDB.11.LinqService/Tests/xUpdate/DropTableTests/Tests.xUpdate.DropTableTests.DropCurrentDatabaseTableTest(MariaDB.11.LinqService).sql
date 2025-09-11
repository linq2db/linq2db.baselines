BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_DropTableTest` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

DROP TABLE `DropTableTest`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

