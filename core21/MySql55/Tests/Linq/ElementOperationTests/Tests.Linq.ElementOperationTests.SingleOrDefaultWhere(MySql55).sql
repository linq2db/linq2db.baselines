﻿BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 2
LIMIT @take

