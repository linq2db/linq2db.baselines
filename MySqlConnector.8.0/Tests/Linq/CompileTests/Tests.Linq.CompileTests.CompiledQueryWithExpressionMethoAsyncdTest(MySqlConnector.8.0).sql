﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`ParentID`,
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	`x`.`ParentID` = @ParentID
ORDER BY
	`x`.`ParentID` DESC
LIMIT @take

