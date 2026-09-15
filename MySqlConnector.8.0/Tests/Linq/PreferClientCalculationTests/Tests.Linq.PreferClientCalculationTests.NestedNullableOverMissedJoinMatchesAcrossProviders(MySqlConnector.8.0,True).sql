-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`e`.`Id`,
	Abs(`j`.`Value1`)
FROM
	`ClientCalcEntity` `e`
		LEFT JOIN `ClientCalcEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

