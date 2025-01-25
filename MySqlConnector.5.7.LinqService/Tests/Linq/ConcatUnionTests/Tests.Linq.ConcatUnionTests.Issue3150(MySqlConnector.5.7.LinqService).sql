BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	'id=1'
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
UNION ALL
SELECT
	`p_1`.`PersonID`,
	`p_1`.`FirstName`,
	'id=2'
FROM
	`Person` `p_1`
WHERE
	`p_1`.`PersonID` = 2

