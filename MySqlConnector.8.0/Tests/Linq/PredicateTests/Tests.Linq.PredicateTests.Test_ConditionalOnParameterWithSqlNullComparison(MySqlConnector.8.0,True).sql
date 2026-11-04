-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	CASE
		WHEN `r`.`A` = `r`.`B` THEN 1
		ELSE 0
	END
FROM
	`NullableFlagTable` `r`
ORDER BY
	`r`.`Id`

