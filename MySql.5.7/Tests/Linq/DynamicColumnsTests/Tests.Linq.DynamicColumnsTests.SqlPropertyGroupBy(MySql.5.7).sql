BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`FirstName`,
	Count(*)
FROM
	`Person` `t1`
GROUP BY
	`t1`.`FirstName`

