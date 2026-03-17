-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE 'J%' ESCAPE '~' AND (`p`.`PersonID` = 1 OR `p`.`LastName` = 'fail')
LIMIT 1

