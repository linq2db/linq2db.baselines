﻿BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 3

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	(`ch`.`ChildID` > 3 OR `ch`.`ChildID` < 4)
LIMIT @take

