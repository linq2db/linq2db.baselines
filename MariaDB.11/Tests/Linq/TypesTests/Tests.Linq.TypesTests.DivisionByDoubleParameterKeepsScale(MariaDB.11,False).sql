-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @param Double
SET     @param = 33

SELECT
	CAST(`v`.`Integer` AS DOUBLE) / @param,
	`v`.`Decimal` / @param,
	`v`.`Double` / @param
FROM
	`NumericDivisionTable` `v`
LIMIT 2

