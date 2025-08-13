BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`y`.`item`
FROM
	`Person` `x`
		CROSS JOIN (
			SELECT 'M' AS `item`
			UNION ALL
			SELECT 'F'
			UNION ALL
			SELECT 'U'
			UNION ALL
			SELECT 'O') `y`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

