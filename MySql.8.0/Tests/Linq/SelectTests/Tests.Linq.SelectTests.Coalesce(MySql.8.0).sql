BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`PersonID`,
	Coalesce(`p`.`FirstName`, 'None'),
	Coalesce(`p`.`MiddleName`, 'None')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

