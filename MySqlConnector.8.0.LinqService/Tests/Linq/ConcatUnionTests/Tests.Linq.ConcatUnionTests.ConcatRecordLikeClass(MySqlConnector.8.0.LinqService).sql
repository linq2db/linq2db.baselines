BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

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

