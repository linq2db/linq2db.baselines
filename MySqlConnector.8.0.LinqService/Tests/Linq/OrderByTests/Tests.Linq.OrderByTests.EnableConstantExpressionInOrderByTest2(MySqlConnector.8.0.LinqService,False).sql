BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`p`.`PersonID`,
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` IN (1, 3)
ORDER BY
	`p`.`LastName` DESC

