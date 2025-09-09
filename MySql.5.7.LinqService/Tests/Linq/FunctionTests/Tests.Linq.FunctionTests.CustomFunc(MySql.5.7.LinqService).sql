BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	Concat(`p`.`LastName`, ', ', `p`.`FirstName`)
FROM
	`Person` `p`
WHERE
	Concat(`p`.`LastName`, ', ', `p`.`FirstName`) = 'Pupkin, John'

