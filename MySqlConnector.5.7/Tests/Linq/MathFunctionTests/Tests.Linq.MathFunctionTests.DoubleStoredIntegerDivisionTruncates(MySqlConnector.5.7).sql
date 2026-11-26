-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(`t`.`D` AS SIGNED) DIV 2
FROM
	`DoubleStoredIntegerTable` `t`
ORDER BY
	`t`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`D`
FROM
	`DoubleStoredIntegerTable` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t`.`Id`
FROM
	`DoubleStoredIntegerTable` `t`
WHERE
	CAST(`t`.`D` AS SIGNED) DIV 2 = -3
ORDER BY
	`t`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`D`
FROM
	`DoubleStoredIntegerTable` `t1`

