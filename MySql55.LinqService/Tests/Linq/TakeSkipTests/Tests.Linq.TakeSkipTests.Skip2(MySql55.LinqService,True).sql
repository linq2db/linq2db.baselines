﻿BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	(`ch`.`ChildID` > 3 OR `ch`.`ChildID` < 4)
ORDER BY
	`ch`.`ParentID`,
	`ch`.`ChildID`
LIMIT @skip, 9223372036854775807

