BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`z`.`FirstName`,
	`z`.`PersonID`,
	`z`.`LastName`,
	`z`.`MiddleName`,
	`z`.`Gender`
FROM
	`Person` `z`
WHERE
	`z`.`PersonID` = 1

