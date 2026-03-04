-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(`p`.`PersonID`)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` IN (1, 2)
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(`p`.`PersonID`)
FROM
	`Person` `p`
WHERE
	1 = 0
LIMIT 2

