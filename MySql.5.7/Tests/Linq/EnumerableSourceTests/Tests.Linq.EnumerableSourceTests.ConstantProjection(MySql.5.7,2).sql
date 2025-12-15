-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
ORDER BY
	`p`.`PersonID`

