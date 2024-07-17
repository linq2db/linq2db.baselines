﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`PersonID`,
	`y`.`value__`
FROM
	`Person` `x`
		CROSS JOIN (
			SELECT 0 AS `value__`
			UNION ALL
			SELECT 1
			UNION ALL
			SELECT 2
			UNION ALL
			SELECT 3) `y`

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

