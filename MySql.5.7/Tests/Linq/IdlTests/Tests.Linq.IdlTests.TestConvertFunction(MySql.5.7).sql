BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`PersonID`
FROM
	`Patient` `x`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`PersonID`,
	`x`.`FirstName`
FROM
	`Person` `x`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x_1`.`PersonID`,
	`x`.`PersonID`,
	`x`.`FirstName`
FROM
	`Patient` `x_1`
		INNER JOIN `Person` `x` ON `x_1`.`PersonID` = `x`.`PersonID`

