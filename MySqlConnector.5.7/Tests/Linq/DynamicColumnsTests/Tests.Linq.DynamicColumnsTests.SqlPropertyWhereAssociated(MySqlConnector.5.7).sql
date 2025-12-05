-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`PersonID`
FROM
	`Person` `x`
		INNER JOIN `Patient` `a_Patient` ON `x`.`PersonID` = `a_Patient`.`PersonID`
WHERE
	`a_Patient`.`Diagnosis` IS NOT NULL

