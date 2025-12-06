-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`,
	NULL,
	NULL
FROM
	`Person` `x`
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	`x_1`.`PersonID`,
	`x_1`.`Diagnosis`
FROM
	`Patient` `x_1`

