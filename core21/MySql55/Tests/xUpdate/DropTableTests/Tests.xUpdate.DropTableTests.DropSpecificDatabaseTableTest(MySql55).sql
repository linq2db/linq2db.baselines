BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `testdata`.`DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `testdata`.`DropTableTest`

