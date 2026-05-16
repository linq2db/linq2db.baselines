-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CONCAT('I-', CAST(`x`.`PersonID` AS CHAR(11))),
	`x`.`FirstName`
FROM
	`Person` `x`
UNION ALL
SELECT
	NULL,
	CONCAT('QUASI-', `x_1`.`FirstName`)
FROM
	`Person` `x_1`

