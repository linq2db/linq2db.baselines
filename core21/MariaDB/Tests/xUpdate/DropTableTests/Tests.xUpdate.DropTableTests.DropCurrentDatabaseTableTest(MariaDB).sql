BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `DropTableTest`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

