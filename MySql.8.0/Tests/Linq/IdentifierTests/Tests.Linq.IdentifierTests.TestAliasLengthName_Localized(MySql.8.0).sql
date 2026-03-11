-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`z`.`FirstName`,
	`z`.`PersonID`,
	`z`.`LastName`,
	`z`.`MiddleName`,
	`z`.`Gender`
FROM
	`Person` `z`
WHERE
	`z`.`PersonID` = 1

