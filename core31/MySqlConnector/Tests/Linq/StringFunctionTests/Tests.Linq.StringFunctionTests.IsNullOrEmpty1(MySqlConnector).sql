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
WHERE
	(`p`.`FirstName` IS NOT NULL AND Char_Length(`p`.`FirstName`) <> 0) AND
	`p`.`PersonID` = 1

