BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`FirstName`,
	Count(*)
FROM
	`Person` `t1`
GROUP BY
	`t1`.`FirstName`
ORDER BY
	`t1`.`FirstName`

