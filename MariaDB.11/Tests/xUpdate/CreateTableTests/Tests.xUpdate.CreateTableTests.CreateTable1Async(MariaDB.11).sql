BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

DROP TABLE IF EXISTS `TestTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

CREATE TABLE `TestTable`
(
	`ID`        INT           AUTO_INCREMENT NOT NULL,
	`Field1`    VARCHAR(50)                      NULL,
	`Field2`    VARCHAR(4000)                    NULL,
	`CreatedOn` DATETIME                         NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`ID`,
	`t1`.`Field1`,
	`t1`.`Field2`,
	`t1`.`CreatedOn`
FROM
	`TestTable` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

DROP TABLE `TestTable`

