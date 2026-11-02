-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`BooleanTable` `r`
ORDER BY
	`r`.`Value1` <> `r`.`Value4` OR `r`.`Value4` IS NULL,
	`r`.`Id`

