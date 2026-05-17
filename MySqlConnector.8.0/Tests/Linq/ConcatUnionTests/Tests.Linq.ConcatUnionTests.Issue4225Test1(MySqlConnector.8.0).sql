-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS CHAR(255))
FROM
	`Person` `x`
UNION ALL
SELECT
	CAST(NULL AS CHAR(255)),
	CAST(NULL AS SIGNED),
	CAST(NULL AS CHAR(255)),
	CAST(NULL AS CHAR(255)),
	CAST(NULL AS CHAR),
	`x_1`.`PersonID`,
	`x_1`.`Diagnosis`
FROM
	`Patient` `x_1`

