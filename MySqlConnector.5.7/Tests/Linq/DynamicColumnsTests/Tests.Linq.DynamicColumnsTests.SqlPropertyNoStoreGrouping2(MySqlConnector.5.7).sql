BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`LastName`,
	Count(*)
FROM
	`Person` `t1`
GROUP BY
	`t1`.`FirstName`,
	`t1`.`LastName`
ORDER BY
	`t1`.`FirstName`

