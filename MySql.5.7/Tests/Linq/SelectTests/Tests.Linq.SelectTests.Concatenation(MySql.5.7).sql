BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '456')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND Concat('123', `p`.`FirstName`, '456') = '123John456'

