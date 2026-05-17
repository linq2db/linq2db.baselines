-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	RIGHT(`p`.`FirstName`, 3)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

