BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`FirstName`,
	COUNT(*)
FROM
	`Person` `p`
GROUP BY
	`p`.`FirstName`

