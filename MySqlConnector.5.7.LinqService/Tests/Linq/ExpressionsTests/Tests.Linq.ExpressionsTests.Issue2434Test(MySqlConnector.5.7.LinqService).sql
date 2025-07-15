BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`FirstName`,
	`t1`.`LastName`,
	Concat(`t1`.`FirstName`, ' ', `t1`.`LastName`)
FROM
	`Issue2434Table` `t1`
ORDER BY
	Concat(`t1`.`FirstName`, ' ', `t1`.`LastName`)

