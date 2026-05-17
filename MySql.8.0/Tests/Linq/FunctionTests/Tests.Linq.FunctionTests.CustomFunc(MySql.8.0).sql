-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CONCAT(`p`.`LastName`, ', ', `p`.`FirstName`)
FROM
	`Person` `p`
WHERE
	(CONCAT(`p`.`LastName`, ', ', `p`.`FirstName`)) = 'Pupkin, John'

