-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @param NewDecimal(2, 0) -- Decimal
SET     @param = 33
DECLARE @param_1 NewDecimal(2, 0) -- Decimal
SET     @param_1 = 33

SELECT
	CAST(`v`.`Integer` AS DECIMAL(29, 10)) / @param,
	`v`.`Decimal` / @param_1,
	`v`.`Double` / @param
FROM
	`NumericDivisionTable` `v`
LIMIT 2

