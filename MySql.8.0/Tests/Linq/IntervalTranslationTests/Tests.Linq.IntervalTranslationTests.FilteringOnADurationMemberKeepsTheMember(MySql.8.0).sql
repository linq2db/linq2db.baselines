-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	`r`.`Grace` > 1800
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`
FROM
	`OptionalDurationRow` `r`
WHERE
	`r`.`Required` > 1800
ORDER BY
	`r`.`Id`

