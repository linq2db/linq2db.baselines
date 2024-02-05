BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`TestИмя` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Test Int32
SET     @Test = 2

UPDATE
	`testparams` `t`
SET
	`t`.`TestИмя` = @Test
WHERE
	`t`.`TestИмя` = 1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `testparams`

