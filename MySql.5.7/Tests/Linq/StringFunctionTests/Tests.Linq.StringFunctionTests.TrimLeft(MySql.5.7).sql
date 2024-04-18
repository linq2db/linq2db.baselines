BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	LTrim(Concat('  ', `p`.`FirstName`, ' ')) = 'John ' AND
	`p`.`PersonID` = 1

