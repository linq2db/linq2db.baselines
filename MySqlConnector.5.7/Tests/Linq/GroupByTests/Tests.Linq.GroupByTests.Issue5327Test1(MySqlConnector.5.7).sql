-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`Key`
FROM
	`Issue5327Table` `c_1`
GROUP BY
	`c_1`.`Key`
ORDER BY
	SUM(`c_1`.`Value`) DESC

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Key`,
	`t1`.`Value`
FROM
	`Issue5327Table` `t1`

