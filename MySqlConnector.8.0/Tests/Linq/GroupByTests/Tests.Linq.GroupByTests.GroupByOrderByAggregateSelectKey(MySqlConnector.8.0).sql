-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`c_1`.`Key`
FROM
	`GroupByKeyValueTable` `c_1`
GROUP BY
	`c_1`.`Key`
ORDER BY
	SUM(`c_1`.`Value`) DESC

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Key`,
	`t1`.`Value`
FROM
	`GroupByKeyValueTable` `t1`

