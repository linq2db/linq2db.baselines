BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`MiddleName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

