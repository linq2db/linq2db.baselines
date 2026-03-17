-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`Issue4132Table` `row_1`
SET
	`row_1`.`Id` = `row_1`.`Id`,
	`row_1`.`Number` = `row_1`.`Number`,
	`row_1`.`Text` = 'updated recently'
WHERE
	`row_1`.`Number` = 1

