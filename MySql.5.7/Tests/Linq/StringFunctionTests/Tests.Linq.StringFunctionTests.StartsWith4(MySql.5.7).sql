BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p1`.`FirstName`,
	`p1`.`PersonID`,
	`p1`.`LastName`,
	`p1`.`MiddleName`,
	`p1`.`Gender`
FROM
	`Person` `p1`
		CROSS JOIN `Person` `p2`
WHERE
	`p1`.`PersonID` = `p2`.`PersonID` AND `p1`.`FirstName` LIKE Replace(`p2`.`FirstName`, '%', '~%') ESCAPE '~'

