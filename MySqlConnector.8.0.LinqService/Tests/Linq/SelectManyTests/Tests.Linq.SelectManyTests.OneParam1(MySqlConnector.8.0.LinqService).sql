BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

