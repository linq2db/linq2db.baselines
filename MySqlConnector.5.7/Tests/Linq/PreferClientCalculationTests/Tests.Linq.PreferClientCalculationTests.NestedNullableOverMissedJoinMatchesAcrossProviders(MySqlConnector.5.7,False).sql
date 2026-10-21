-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`e`.`Id`,
	`j`.`Value1` + 1
FROM
	`ClientCalcEntity` `e`
		LEFT JOIN `ClientCalcEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

