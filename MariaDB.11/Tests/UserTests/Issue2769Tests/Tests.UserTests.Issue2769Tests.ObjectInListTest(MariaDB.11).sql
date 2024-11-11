﻿BeforeExecute
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
	`a_1`.`Id`,
	`a_1`.`NullValue`
FROM
	(
		SELECT
			`a`.`Id`,
			CASE
				WHEN `a`.`NullValue` IS NOT NULL THEN `a`.`NullValue`
				ELSE 0
			END as `KEYNUMB`,
			`a`.`NullValue`
		FROM
			`SampleClass` `a`
	) `a_1`
WHERE
	`a_1`.`Id` = 0 AND `a_1`.`KEYNUMB` = 0 OR `a_1`.`Id` = 1 AND `a_1`.`KEYNUMB` = 1 OR
	`a_1`.`Id` = 2 AND `a_1`.`KEYNUMB` = 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SampleClass`

