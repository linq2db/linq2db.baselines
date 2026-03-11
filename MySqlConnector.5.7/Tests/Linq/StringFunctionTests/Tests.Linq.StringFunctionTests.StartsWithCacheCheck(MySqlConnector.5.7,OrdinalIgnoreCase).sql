-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	Lower(`p`.`FirstName`) LIKE 'joh%' ESCAPE '~' AND `p`.`PersonID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	Lower(`p`.`FirstName`) NOT LIKE 'joh%' ESCAPE '~' AND
	`p`.`PersonID` = 1

