BeforeExecute
-- MySql MySql.Official MySql

CREATE TEMPORARY TABLE `IsTemporaryTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`IsTemporaryTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `IsTemporaryTable`

