﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

