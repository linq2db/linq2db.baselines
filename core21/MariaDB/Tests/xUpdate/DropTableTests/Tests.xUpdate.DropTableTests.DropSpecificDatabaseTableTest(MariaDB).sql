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

INSERT INTO `testdata`.`DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `testdata`.`DropTableTest`

