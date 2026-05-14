-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`PersonID`,
	TRIM(TRAILING '' FROM (CONCAT(`p`.`FirstName`, '1')))
FROM
	`Person` `p`

