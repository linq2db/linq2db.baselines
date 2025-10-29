-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

