-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	`p`.`LastName`
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND `p`.`FirstName` = 'John' AND
	`p`.`LastName` = 'Pupkin'
LIMIT 2

