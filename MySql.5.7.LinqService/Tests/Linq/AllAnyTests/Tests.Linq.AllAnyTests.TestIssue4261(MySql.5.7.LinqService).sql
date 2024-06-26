﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	`Person` `x`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 'John' AS `item`
				UNION ALL
				SELECT 'Not John') `y`
		WHERE
			`y`.`item` = `x`.`FirstName`
	)

