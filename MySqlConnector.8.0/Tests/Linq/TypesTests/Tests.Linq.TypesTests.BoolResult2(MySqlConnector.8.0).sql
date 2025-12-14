-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`a_Patient`.`PersonID` IS NOT NULL
FROM
	`Person` `p`
		LEFT JOIN `Patient` `a_Patient` ON `p`.`PersonID` = `a_Patient`.`PersonID`

