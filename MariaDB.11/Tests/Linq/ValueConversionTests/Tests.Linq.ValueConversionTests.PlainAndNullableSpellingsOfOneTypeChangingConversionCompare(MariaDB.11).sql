-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`TicksConversionRow` `r`
WHERE
	`r`.`Plain` = `r`.`Date`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`TicksConversionRow` `r`
WHERE
	`r`.`Plain` < `r`.`Date`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CASE
		WHEN `r`.`Id` <> 1 THEN `r`.`Date`
		ELSE `r`.`Plain`
	END
FROM
	`TicksConversionRow` `r`
ORDER BY
	`r`.`Id`

