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
			SELECT 'Janet' AS `Name` FROM DUAL
			UNION ALL
			SELECT 'Doe' FROM DUAL) `n` ON `p`.`LastName` = `n`.`Name`

