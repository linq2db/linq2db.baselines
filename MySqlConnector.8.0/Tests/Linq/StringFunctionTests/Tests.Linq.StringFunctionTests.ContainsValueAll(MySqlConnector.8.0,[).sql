-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('[', '123[456') > 0

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND LOCATE('[', '123[456') <= 0

