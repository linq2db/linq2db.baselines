-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CONCAT(`p`.`LastName`, ', ', `p`.`FirstName`)
FROM
	`Person` `p`
WHERE
	(CONCAT(`p`.`LastName`, ', ', `p`.`FirstName`)) = 'Pupkin, John'

