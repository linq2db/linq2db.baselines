-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`TicksConversionRow` `r`
WHERE
	`r`.`Plain` = `r`.`Date`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`TicksConversionRow` `r`
WHERE
	`r`.`Plain` < `r`.`Date`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CASE
		WHEN `r`.`Id` <> 1 THEN `r`.`Date`
		ELSE `r`.`Plain`
	END
FROM
	`TicksConversionRow` `r`
ORDER BY
	`r`.`Id`

