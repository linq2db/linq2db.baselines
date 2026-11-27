-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CASE
		WHEN `r`.`Id` = 1 THEN `r`.`Plain`
		ELSE `r`.`Date`
	END
FROM
	`ShiftedDateRow` `r`
ORDER BY
	`r`.`Id`

