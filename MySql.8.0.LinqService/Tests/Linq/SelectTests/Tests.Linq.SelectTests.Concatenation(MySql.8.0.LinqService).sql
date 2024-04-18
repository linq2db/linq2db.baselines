BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Concat('123', `p`.`FirstName`, '456') = '123John456' AND
	`p`.`PersonID` = 1

