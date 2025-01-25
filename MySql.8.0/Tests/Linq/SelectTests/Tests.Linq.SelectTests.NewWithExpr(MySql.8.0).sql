BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`PersonID`,
	Concat(`p`.`FirstName`, '1')
FROM
	`Person` `p`

