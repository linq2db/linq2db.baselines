-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value NewDecimal(1, 0) -- Decimal
SET     @value = 1

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(@value AS DECIMAL(29, 10)) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value NewDecimal(13, 3) -- Decimal
SET     @value = 2147483648.123

SELECT
	`t1`.`ID`,
	`t1`.`Value_1`
FROM
	(
		SELECT
			`r`.`PersonID` as `ID`,
			CAST(@value AS DECIMAL(29, 10)) as `Value_1`
		FROM
			`Person` `r`
	) `t1`

