-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('Joh', `p`.`FirstName`) > 0 AND `p`.`PersonID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	LOCATE('Joh', `p`.`FirstName`) <= 0 AND `p`.`PersonID` = 1

