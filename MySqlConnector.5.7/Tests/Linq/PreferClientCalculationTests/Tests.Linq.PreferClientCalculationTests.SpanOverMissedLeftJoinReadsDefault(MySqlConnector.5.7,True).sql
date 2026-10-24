-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`e`.`Id`,
	`j`.`Span`,
	`e`.`Span`
FROM
	`MissedSpanEntity` `e`
		LEFT JOIN `MissedSpanEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Span`
FROM
	`MissedSpanEntity` `t1`

