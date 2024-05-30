BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`a_Patient`.`Diagnosis`
FROM
	`Person` `x`
		LEFT JOIN `Patient` `a_Patient` ON `x`.`PersonID` = `a_Patient`.`PersonID`

