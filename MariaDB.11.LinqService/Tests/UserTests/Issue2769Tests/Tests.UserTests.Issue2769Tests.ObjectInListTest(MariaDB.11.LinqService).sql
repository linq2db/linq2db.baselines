BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`        INT NOT NULL,
	`NullValue` INT     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`a`.`Id`,
	`a`.`NullValue`
FROM
	`SampleClass` `a`
WHERE
	(`a`.`Id` = 0 AND (`a`.`NullValue` = 0 AND `a`.`NullValue` IS NOT NULL OR `a`.`NullValue` IS NULL) OR `a`.`Id` = 1 AND `a`.`NullValue` = 1 AND `a`.`NullValue` IS NOT NULL OR `a`.`Id` = 2 AND `a`.`NullValue` = 2 AND `a`.`NullValue` IS NOT NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

