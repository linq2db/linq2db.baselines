BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`testdata`.`Issue681Table` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table`

