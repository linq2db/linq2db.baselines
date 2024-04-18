BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	RTrim(Concat('  ', `p`.`FirstName`, ' ')) = '  John' AND
	`p`.`PersonID` = 1

