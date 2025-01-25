BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p2`.`PersonID`,
	Concat(`p2`.`FirstName`, '')
FROM
	`Person` `p2`
WHERE
	`p2`.`PersonID` = 1

