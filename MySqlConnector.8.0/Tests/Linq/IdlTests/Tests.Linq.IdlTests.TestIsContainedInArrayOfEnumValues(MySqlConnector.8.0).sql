﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`ParentID`,
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	`x`.`Value1` IN (2, 3, 4)

