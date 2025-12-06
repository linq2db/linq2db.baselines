-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`PersonID`
FROM
	`Patient` `x`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`PersonID`,
	`x`.`FirstName`
FROM
	`Person` `x`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`PersonID`,
	`person_1`.`PersonID`,
	`person_1`.`FirstName`
FROM
	`Patient` `x`
		INNER JOIN `Person` `person_1` ON `x`.`PersonID` = `person_1`.`PersonID`

