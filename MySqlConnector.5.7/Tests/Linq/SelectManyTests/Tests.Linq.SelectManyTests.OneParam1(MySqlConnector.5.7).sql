BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`FirstName`,
	`c_1`.`PersonID`,
	`c_1`.`LastName`,
	`c_1`.`MiddleName`,
	`c_1`.`Gender`
FROM
	`Person` `cp`,
	`Person` `c_1`
WHERE
	`c_1`.`PersonID` = 1

