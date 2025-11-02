-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`PersonID`,
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` IN (1, 3)
ORDER BY
	`p`.`LastName`

