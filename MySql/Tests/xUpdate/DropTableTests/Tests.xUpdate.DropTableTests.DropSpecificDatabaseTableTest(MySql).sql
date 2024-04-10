BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `testdata`.`DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`
FROM
	`testdata`.`DropTableTest` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `testdata`.`DropTableTest`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`
FROM
	`testdata`.`DropTableTest` `t1`

