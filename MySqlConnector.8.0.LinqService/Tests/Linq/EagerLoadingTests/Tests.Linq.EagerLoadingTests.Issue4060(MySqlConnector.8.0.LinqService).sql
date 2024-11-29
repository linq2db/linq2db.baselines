BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 2
UNION ALL
SELECT
	`p_1`.`FirstName`,
	`p_1`.`PersonID`,
	`p_1`.`LastName`,
	`p_1`.`MiddleName`,
	`p_1`.`Gender`
FROM
	`Person` `p_1`
WHERE
	`p_1`.`PersonID` = 3

