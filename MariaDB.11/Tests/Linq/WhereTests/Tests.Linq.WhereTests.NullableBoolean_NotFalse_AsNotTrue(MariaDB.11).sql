BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`ID`,
	`r`.`Bool`
FROM
	`NullableBool` `r`
WHERE
	`r`.`Bool` = 1 OR `r`.`Bool` IS NULL

