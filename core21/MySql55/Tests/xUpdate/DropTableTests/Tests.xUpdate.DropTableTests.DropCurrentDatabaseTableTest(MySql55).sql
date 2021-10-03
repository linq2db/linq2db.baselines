BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySql55 MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

BeforeExecute
-- MySql55 MySql

DROP TABLE `DropTableTest`

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

