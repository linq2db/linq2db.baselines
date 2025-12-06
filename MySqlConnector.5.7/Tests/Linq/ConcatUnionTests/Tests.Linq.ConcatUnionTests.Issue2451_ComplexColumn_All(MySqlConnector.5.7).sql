-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
UNION ALL
SELECT
	Concat(`p_1`.`FirstName`, '/', `p_1`.`LastName`)
FROM
	`Person` `p_1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Concat(`p`.`FirstName`, '/', `p`.`LastName`)
FROM
	`Person` `p`
UNION ALL
SELECT
	`p_1`.`FirstName`
FROM
	`Person` `p_1`

