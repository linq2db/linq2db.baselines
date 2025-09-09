BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`e`.`PersonID`,
	`e`.`FirstName`,
	`e`.`LastName`,
	Concat(`e`.`FirstName`, ':', `e`.`LastName`)
FROM
	`Person` `e`
WHERE
	`e`.`PersonID` = 1
LIMIT 2

