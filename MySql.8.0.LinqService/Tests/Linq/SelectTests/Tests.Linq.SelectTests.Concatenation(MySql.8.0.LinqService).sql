BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '456')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND Concat('123', `p`.`FirstName`, '456') = '123John456'

