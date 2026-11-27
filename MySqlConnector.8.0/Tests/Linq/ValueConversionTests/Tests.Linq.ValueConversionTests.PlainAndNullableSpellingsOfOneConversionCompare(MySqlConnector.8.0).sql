-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`ShiftedDateRow` `r`
WHERE
	`r`.`Plain` = `r`.`Date`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`ShiftedDateRow` `r`
WHERE
	`r`.`Plain` < `r`.`Date`

