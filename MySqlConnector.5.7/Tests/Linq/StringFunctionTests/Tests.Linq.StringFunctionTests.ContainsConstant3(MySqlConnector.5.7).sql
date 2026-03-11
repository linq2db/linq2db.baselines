-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` IN ('oh', 'oh''', 'oh\\')

