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
	Concat(Left(`p`.`FirstName`, 2), '123', Right(`p`.`FirstName`, Char_Length(`p`.`FirstName`) - 3)) = 'Jo123n' AND
	`p`.`PersonID` = 1

