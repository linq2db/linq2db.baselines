﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(1 AS UNSIGNED) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(2147483648 AS UNSIGNED) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

