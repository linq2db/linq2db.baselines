-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	CAST(CAST(`r`.`Grace` AS SIGNED) * 10000000 AS DOUBLE) / 600000000 > 30
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	CAST(CAST(`r`.`Required` AS SIGNED) * 10000000 AS DOUBLE) / 600000000 > 30
ORDER BY
	`r`.`Id`

