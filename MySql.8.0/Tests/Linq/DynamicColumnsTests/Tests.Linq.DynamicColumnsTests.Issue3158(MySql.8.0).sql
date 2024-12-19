BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`PersonID`,
	`pa`.`Diagnosis`
FROM
	`Person` `p`
		INNER JOIN `Doctor` `d` ON `p`.`PersonID` = `d`.`PersonID`
		LEFT JOIN `Patient` `pa` ON `pa`.`Diagnosis` = `p`.`FirstName` OR `pa`.`Diagnosis` IS NULL AND `p`.`FirstName` IS NULL

