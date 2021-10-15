BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `TestEqualsTable1`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `TestEqualsTable2`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestEqualsTable2`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestEqualsTable1`

