BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	`Person` `x`
		INNER JOIN `Patient` `a_Patient` ON `x`.`PersonID` = `a_Patient`.`PersonID`
WHERE
	`a_Patient`.`Diagnosis` = 'Hallucination with Paranoid Bugs'' Delirium of Persecution'

