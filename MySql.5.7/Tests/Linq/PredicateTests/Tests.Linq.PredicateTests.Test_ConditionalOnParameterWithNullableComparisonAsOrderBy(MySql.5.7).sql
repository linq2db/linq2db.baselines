-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`NullableFlagTable` `r`
ORDER BY
	CASE
		WHEN `r`.`A` = `r`.`B` OR `r`.`A` IS NULL AND `r`.`B` IS NULL
			THEN 1
		ELSE 0
	END,
	`r`.`Id`

