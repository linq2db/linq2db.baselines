BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `DropTableTestID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE `DropTableTestID`
(
	`ID`  INT AUTO_INCREMENT NOT NULL,
	`ID1` INT                NOT NULL,

	CONSTRAINT `PK_DropTableTestID` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `DropTableTestID`
(
	`ID1`
)
VALUES
(
	2
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ID`,
	`t`.`ID1`
FROM
	`DropTableTestID` `t`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE `DropTableTestID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`,
	`t1`.`ID1`
FROM
	`DropTableTestID` `t1`

