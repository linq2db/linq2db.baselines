-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`TicksConversionRow` `r`
WHERE
	`r`.`Plain` = `r`.`Date`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`TicksConversionRow` `r`
WHERE
	`r`.`Plain` < `r`.`Date`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CASE
		WHEN `r`.`Id` <> 1 THEN `r`.`Date`
		ELSE `r`.`Plain`
	END
FROM
	`TicksConversionRow` `r`
ORDER BY
	`r`.`Id`

