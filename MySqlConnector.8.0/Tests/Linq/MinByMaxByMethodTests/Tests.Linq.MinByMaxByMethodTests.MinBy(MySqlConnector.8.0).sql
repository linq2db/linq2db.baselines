-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`TestId`,
	`t1`.`NTestId`
FROM
	`TestTable` `t1`
ORDER BY
	`t1`.`Id`
LIMIT 1

