﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`FirstName`,
	`t`.`PersonID`,
	`t`.`LastName`,
	`t`.`MiddleName`,
	`t`.`Gender`
FROM
	`Person` `t`
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT 'j' AS `item`
				UNION ALL
				SELECT 'o'
				UNION ALL
				SELECT 'h'
				UNION ALL
				SELECT 'n') `x`
		WHERE
			Locate(`x`.`item`, `t`.`FirstName`) - 1 > 0
	)

