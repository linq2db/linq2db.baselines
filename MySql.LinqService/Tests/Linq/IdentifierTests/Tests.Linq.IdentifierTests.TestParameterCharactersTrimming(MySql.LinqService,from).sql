BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`from` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @from Int32
SET     @from = 2

UPDATE
	`testparams` `t`
SET
	`t`.`from` = @from
WHERE
	`t`.`from` = 1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `testparams`

