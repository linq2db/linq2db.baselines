﻿BeforeExecute
-- MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 1
LIMIT @skip, 1

