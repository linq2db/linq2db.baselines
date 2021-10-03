BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MariaDB MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MariaDB MySql

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

BeforeExecute
-- MariaDB MySql

DROP TABLE `DropTableTest`

BeforeExecute
-- MariaDB MySql

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

