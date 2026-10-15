-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`e`.`Id`,
	`j`.`Span`,
	`e`.`Span`
FROM
	`MissedSpanEntity` `e`
		LEFT JOIN `MissedSpanEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Span`
FROM
	`MissedSpanEntity` `t1`

