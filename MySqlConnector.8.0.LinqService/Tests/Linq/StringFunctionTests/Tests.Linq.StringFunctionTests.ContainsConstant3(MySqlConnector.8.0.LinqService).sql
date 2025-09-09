BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` IN ('oh', 'oh''', 'oh\\')

