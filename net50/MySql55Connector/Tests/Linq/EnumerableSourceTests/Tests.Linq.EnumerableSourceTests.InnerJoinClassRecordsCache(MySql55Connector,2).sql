BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT 3 AS `PersonID` FROM DUAL
			UNION ALL
			SELECT 4 FROM DUAL) `n` ON `p`.`PersonID` = `n`.`PersonID`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT 5 AS `PersonID` FROM DUAL
			UNION ALL
			SELECT 6 FROM DUAL) `n` ON `p`.`PersonID` = `n`.`PersonID`

