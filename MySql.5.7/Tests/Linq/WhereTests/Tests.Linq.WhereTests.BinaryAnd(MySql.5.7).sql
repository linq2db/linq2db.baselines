-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CAST(`p`.`PersonID` & 3 AS SIGNED) = 1

