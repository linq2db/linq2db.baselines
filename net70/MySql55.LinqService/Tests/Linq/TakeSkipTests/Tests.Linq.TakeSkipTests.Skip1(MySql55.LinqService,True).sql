﻿BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID`
LIMIT @skip, 9223372036854775807

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 4

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID`
LIMIT @skip, 9223372036854775807

