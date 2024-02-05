BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TestEqualsTable1`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestEqualsTable1`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TestEqualsTable2`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestEqualsTable2`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TestEqualsTable2`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TestEqualsTable1`

