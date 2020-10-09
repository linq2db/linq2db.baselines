BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

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

SELECT 
	`t1`.`ID`
FROM
	`testdata`.`DropTableTest` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `testdata`.`DropTableTest`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`t1`.`ID`
FROM
	`testdata`.`DropTableTest` `t1`

