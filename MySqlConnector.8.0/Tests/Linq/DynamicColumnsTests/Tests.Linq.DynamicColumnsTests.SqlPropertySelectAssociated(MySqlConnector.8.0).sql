-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`a_Patient`.`Diagnosis`
FROM
	`Person` `x`
		LEFT JOIN `Patient` `a_Patient` ON `x`.`PersonID` = `a_Patient`.`PersonID`

