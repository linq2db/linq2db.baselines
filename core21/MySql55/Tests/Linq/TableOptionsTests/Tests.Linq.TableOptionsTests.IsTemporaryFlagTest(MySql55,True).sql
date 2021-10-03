BeforeExecute
-- MySql55 MySql

CREATE TEMPORARY TABLE `IsTemporaryTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`IsTemporaryTable` `t1`

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `IsTemporaryTable`

