-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(`t`.`D` AS SIGNED) DIV 2
FROM
	`DoubleStoredIntegerTable` `t`
ORDER BY
	`t`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`D`
FROM
	`DoubleStoredIntegerTable` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`
FROM
	`DoubleStoredIntegerTable` `t`
WHERE
	CAST(`t`.`D` AS SIGNED) DIV 2 = -3
ORDER BY
	`t`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`D`
FROM
	`DoubleStoredIntegerTable` `t1`

