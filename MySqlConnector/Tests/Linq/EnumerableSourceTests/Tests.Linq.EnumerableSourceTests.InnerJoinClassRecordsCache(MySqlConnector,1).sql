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
			SELECT 2 AS `ID` FROM DUAL
			UNION ALL
			SELECT 3 FROM DUAL) `n` ON `p`.`PersonID` = `n`.`ID`

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
			SELECT 4 AS `ID` FROM DUAL
			UNION ALL
			SELECT 5 FROM DUAL) `n` ON `p`.`PersonID` = `n`.`ID`

