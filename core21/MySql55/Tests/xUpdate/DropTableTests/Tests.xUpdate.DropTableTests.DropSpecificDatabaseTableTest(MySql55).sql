BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySql55 MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `testdata`.`DropTableTest`
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
	`testdata`.`DropTableTest` `t1`

BeforeExecute
-- MySql55 MySql

DROP TABLE `testdata`.`DropTableTest`

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`ID`
FROM
	`testdata`.`DropTableTest` `t1`

