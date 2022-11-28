BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT 1 AS `PersonID` FROM DUAL
			UNION ALL
			SELECT 2 FROM DUAL) `n` ON `p`.`PersonID` = `n`.`PersonID`

