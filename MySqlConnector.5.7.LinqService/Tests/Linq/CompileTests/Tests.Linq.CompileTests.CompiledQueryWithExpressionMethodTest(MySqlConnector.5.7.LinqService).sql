﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = 1

SELECT
	`x`.`ParentID`,
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	`x`.`ParentID` = @p
ORDER BY
	`x`.`ParentID` DESC
LIMIT 1

