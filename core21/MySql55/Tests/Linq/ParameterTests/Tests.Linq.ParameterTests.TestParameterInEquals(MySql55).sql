BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `TestEqualsTable1`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `TestEqualsTable2`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @param Int32
SET     @param = NULL

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
			`_`.`Id` = `__`.`FK` AND `__`.`Id` = @param
	)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TestEqualsTable2`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TestEqualsTable1`

