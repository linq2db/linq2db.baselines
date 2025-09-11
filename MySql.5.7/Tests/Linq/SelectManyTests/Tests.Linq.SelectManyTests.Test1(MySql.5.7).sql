BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`PersonID`,
	`p2`.`FirstName`
FROM
	`Person` `t`
		CROSS JOIN `Person` `p2`
WHERE
	`t`.`PersonID` = `p2`.`PersonID` AND `t`.`PersonID` = 1

