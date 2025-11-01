-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`PersonID`,
	`x`.`FirstName`,
	`x`.`LastName`,
	`x`.`MiddleName`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = 'John'

