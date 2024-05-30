BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`PersonID`,
	`x`.`FirstName`,
	`x`.`LastName`,
	`x`.`MiddleName`
FROM
	`Person` `x`
		LEFT JOIN `Patient` `a_Patient` ON `x`.`PersonID` = `a_Patient`.`PersonID`
WHERE
	`a_Patient`.`Diagnosis` = 'Hallucination with Paranoid Bugs'' Delirium of Persecution'

