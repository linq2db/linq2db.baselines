BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `testparams`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `testparams`
(
	`col1`    INT NOT NULL,
	`Column1` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

UPDATE
	`testparams` `t`
SET
	`t`.`col1` = 2
WHERE
	`t`.`Column1` = 1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `testparams`

