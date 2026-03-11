-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

/* query 1
query 2 */
SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`LastName` = 'a' AND `p`.`FirstName` = 'a'

