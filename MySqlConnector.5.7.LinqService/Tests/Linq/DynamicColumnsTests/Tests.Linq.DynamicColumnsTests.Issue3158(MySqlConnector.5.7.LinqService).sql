BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`p`.`PersonID`,
	`pa`.`Diagnosis`
FROM
	`Person` `p`
		INNER JOIN `Doctor` `d` ON `p`.`PersonID` = `d`.`PersonID`
		LEFT JOIN `Patient` `pa` ON `pa`.`Diagnosis` = `p`.`FirstName` OR `pa`.`Diagnosis` IS NULL AND `p`.`FirstName` IS NULL

