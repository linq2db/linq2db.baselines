BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TestEqualsTable1`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TestEqualsTable1`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TestEqualsTable2`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TestEqualsTable2`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @param Int32
SET     @param = 0

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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TestEqualsTable2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TestEqualsTable1`

