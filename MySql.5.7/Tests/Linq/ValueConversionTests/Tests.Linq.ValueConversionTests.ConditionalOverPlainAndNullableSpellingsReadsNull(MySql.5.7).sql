-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CASE
		WHEN `r`.`Id` = 1 THEN `r`.`Plain`
		ELSE `r`.`Date`
	END
FROM
	`ShiftedDateRow` `r`
ORDER BY
	`r`.`Id`

