﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`selectParam`.`ChildID`
FROM
	`GrandChild` `selectParam`
GROUP BY
	`selectParam`.`ParentID` + 1,
	`selectParam`.`ChildID`

