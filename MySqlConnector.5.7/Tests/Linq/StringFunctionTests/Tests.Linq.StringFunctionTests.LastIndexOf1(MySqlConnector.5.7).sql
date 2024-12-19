BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	(Char_Length(`p`.`LastName`) - Locate('p', Reverse(`p`.`LastName`))) - Char_Length('p') = 1 AND
	Locate('p', `p`.`LastName`) <> 0 AND `p`.`PersonID` = 1

