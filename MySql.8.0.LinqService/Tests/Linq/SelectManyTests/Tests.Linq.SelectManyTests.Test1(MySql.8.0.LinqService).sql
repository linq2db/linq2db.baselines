BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`PersonID`,
	`p2`.`FirstName`
FROM
	`Person` `t`,
	`Person` `p2`
WHERE
	`t`.`PersonID` = `p2`.`PersonID` AND `t`.`PersonID` = 1

