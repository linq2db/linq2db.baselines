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
	`p`.`PersonID` = 1 AND NOT (`p`.`MiddleName` IS NOT NULL OR `p`.`PersonID` = 2 OR `p`.`MiddleName` IS NOT NULL) AND
	NOT (`p`.`FirstName` IS NULL OR `p`.`PersonID` = 2 OR `p`.`FirstName` IS NULL)

