BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`1p` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p Int32
SET     @p = 2

UPDATE
	`testparams` `t`
SET
	`t`.`1p` = @p
WHERE
	`t`.`1p` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `testparams`

