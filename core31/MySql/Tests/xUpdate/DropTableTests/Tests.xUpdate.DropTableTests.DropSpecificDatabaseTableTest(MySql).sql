BeforeExecute
-- MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql

INSERT INTO `testdata`.`DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MySql

SELECT
	`t1`.`ID`
FROM
	`testdata`.`DropTableTest` `t1`

BeforeExecute
-- MySql

DROP TABLE `testdata`.`DropTableTest`

BeforeExecute
-- MySql

SELECT
	`t1`.`ID`
FROM
	`testdata`.`DropTableTest` `t1`

