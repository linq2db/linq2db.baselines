BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`_p` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p Int32
SET     @p = 2

UPDATE
	`testparams` `t`
SET
	`t`.`_p` = @p
WHERE
	`t`.`_p` = 1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `testparams`

