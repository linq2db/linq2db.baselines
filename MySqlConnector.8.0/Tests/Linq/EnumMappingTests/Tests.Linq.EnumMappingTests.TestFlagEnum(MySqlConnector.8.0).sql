-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`ID`,
	`t`.`IntValue`
FROM
	`TestTable5` `t`
WHERE
	(`t`.`IntValue` & 1) <> 0

