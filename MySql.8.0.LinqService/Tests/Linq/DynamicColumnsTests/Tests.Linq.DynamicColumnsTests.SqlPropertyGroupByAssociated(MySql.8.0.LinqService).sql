BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`a_Patient`.`Diagnosis`,
	COUNT(*)
FROM
	`Person` `p`
		LEFT JOIN `Patient` `a_Patient` ON `p`.`PersonID` = `a_Patient`.`PersonID`
GROUP BY
	`a_Patient`.`Diagnosis`

