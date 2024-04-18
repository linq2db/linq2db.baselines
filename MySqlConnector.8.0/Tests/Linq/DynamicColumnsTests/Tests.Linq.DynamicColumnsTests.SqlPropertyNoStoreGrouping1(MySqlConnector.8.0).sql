BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`FirstName`,
	Count(*)
FROM
	`Person` `t1`
GROUP BY
	`t1`.`FirstName`
ORDER BY
	`t1`.`FirstName`

