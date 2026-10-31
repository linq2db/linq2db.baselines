-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CASE
		WHEN `r`.`Id` = 1 THEN `r`.`Plain`
		ELSE `r`.`Date`
	END
FROM
	`Issue5975Row` `r`
ORDER BY
	`r`.`Id`

