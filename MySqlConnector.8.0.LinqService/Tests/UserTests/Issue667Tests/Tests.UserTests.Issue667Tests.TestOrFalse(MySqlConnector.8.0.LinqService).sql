﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`f`.`ParentID`,
	`f`.`Value1`
FROM
	`Parent` `f`
WHERE
	`f`.`ParentID` >= 1 OR `f`.`ParentID` <= 4

