-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`gr`.`FirstName`,
	`gr`.`LastName`,
	SUM(`gr`.`PersonID`)
FROM
	`Person` `gr`
GROUP BY
	`gr`.`FirstName`,
	`gr`.`LastName`

