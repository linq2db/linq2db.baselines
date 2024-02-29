BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`Issue681Table` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table`

