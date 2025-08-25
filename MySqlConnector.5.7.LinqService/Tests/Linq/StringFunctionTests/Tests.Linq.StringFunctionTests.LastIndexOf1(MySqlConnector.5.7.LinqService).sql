BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CHAR_LENGTH(`p`.`LastName`) - Locate('p', Reverse(`p`.`LastName`)) = 2 AND
	Locate('p', `p`.`LastName`) <> 0 AND `p`.`PersonID` = 1

