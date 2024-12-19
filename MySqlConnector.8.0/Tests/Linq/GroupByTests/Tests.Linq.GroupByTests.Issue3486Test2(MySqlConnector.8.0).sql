BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`gr`.`FirstName`,
	`gr`.`LastName`,
	SUM(`gr`.`PersonID`)
FROM
	`Person` `gr`
GROUP BY
	`gr`.`FirstName`,
	`gr`.`LastName`

