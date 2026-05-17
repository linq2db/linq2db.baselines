-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`PersonID`,
	`p`.`MiddleName`,
	`p`.`FirstName`,
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
LIMIT 2

