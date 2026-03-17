-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	`Person` `x`
WHERE
	`x`.`PersonID` IN (
		SELECT
			`t1`.`value`
		FROM
			(
				SELECT 1 as value
			) `t1`
	)

