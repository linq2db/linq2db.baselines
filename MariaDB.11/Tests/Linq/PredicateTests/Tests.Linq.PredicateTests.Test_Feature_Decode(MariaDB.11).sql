BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	DECODE(`r`.`One`, `r`.`One`, 0, 1) = 0

