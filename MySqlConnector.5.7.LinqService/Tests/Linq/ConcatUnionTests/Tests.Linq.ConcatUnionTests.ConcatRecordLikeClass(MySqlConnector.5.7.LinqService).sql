BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`
FROM
	`Person` `p`
UNION ALL
SELECT
	`p_1`.`PersonID`,
	`p_1`.`FirstName`,
	`p_1`.`LastName`
FROM
	`Person` `p_1`

