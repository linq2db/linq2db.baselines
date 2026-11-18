-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`TicksConversionRow` `r`
WHERE
	`r`.`Plain` = `r`.`Date`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`TicksConversionRow` `r`
WHERE
	`r`.`Plain` < `r`.`Date`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CASE
		WHEN `r`.`Id` <> 1 THEN `r`.`Date`
		ELSE `r`.`Plain`
	END
FROM
	`TicksConversionRow` `r`
ORDER BY
	`r`.`Id`

