﻿BeforeExecute
-- MySql55 MySql

SELECT
	Max(`id`.`ChildID`)
FROM
	`Child` `id`
GROUP BY
	`id`.`ParentID`

