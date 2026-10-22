-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`e`.`Id`,
	`j`.`Value1`,
	Abs(Coalesce(`j`.`Value1`, 0) - 1),
	`j`.`Date`,
	`e`.`Date`
FROM
	`MissedJoinEntity` `e`
		LEFT JOIN `MissedJoinEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Date`,
	`t1`.`Flag`,
	`t1`.`Name`
FROM
	`MissedJoinEntity` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	Extract(year from Coalesce(`j`.`Date`, '0001-01-01'))
FROM
	`MissedJoinEntity` `e`
		LEFT JOIN `MissedJoinEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

