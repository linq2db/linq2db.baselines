﻿BeforeExecute
-- MySql MySql.Official MySql (asynchronously)
DECLARE @n Int32
SET     @n = 3
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 1
ORDER BY
	`p`.`ParentID`
LIMIT @n, @take

