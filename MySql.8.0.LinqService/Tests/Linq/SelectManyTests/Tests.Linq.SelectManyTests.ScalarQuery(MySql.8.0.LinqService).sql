BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p2`.`PersonID`,
	`t1`.`FirstName`
FROM
	`Person` `t1`,
	`Person` `p2`
WHERE
	`t1`.`PersonID` = `p2`.`PersonID`

