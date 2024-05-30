BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`pp`.`PersonID`,
	Concat('  ', `pp`.`FirstName`, ' ')
FROM
	`Person` `pp`
WHERE
	`pp`.`PersonID` = 1 AND LTRIM(Concat('  ', `pp`.`FirstName`, ' ')) = 'John '

