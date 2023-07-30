BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TestEqualsTable1`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TestEqualsTable1`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TestEqualsTable2`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TestEqualsTable2`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`_`.`Id`
FROM
	`TestEqualsTable1` `_`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`TestEqualsTable2` `__`
		WHERE
			`_`.`Id` = `__`.`FK` AND `__`.`Id` IS NULL
	)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TestEqualsTable2`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TestEqualsTable1`

