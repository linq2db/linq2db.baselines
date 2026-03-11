-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`PersonID`,
	`p`.`LastName`,
	Concat(`p`.`FirstName`, ' ', `p`.`LastName`)
FROM
	`Person` `p`

