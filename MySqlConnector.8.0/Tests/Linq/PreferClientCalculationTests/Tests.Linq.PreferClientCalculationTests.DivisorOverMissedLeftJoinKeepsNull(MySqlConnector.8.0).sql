-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`e`.`Value1` / `j`.`Value1`,
	`e`.`Value1` % `j`.`Value1`,
	`e`.`Dbl` / `j`.`Dbl`,
	`e`.`Value1` / (`j`.`Value1` * 2)
FROM
	`MissedDivisorEntity` `e`
		LEFT JOIN `MissedDivisorEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

