﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CAST(`v`.`Integer` AS DECIMAL(29, 10)) / 33,
	`v`.`Decimal` / 33,
	`v`.`Double` / 33
FROM
	`Issue4469Table` `v`
LIMIT 2

