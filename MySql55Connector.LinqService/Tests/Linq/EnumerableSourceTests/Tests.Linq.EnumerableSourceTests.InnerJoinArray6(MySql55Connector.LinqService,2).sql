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
			SELECT 'Doe' AS `item` FROM DUAL) `n` ON `p`.`LastName` = `n`.`item`

