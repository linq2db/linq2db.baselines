﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 1

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
WHERE
	`t1`.`ParentID` IN (
		SELECT
			`t2`.`ParentID`
		FROM
			`Parent` `t2`
		WHERE
			`t2`.`ParentID` = @id
	) AND
	`t1`.`ChildID` >= 0 AND `t1`.`ChildID` <= 100

