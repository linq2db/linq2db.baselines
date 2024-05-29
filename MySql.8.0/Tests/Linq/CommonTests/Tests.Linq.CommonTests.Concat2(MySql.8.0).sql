BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Concat(`p`.`FirstName`, ' ', 1) = 'John 1'

