-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`TicksConversionRow` `r`
WHERE
	`r`.`Plain` = `r`.`Date`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`TicksConversionRow` `r`
WHERE
	`r`.`Plain` < `r`.`Date`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CASE
		WHEN `r`.`Id` <> 1 THEN `r`.`Date`
		ELSE `r`.`Plain`
	END
FROM
	`TicksConversionRow` `r`
ORDER BY
	`r`.`Id`

