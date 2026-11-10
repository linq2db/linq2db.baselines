-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CASE
		WHEN `r`.`Id` = 1 THEN `r`.`Plain`
		ELSE `r`.`Date`
	END
FROM
	`Issue5975Row` `r`
ORDER BY
	`r`.`Id`

