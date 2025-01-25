BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`PersonID`
FROM
	`Person` `x`
		LEFT JOIN `Patient` `a_Patient` ON `x`.`PersonID` = `a_Patient`.`PersonID`
ORDER BY
	`a_Patient`.`Diagnosis`

