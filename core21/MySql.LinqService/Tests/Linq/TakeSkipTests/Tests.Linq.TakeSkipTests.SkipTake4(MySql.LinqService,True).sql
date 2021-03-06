﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @skip_1 Int32
SET     @skip_1 = 1
DECLARE @take Int32
SET     @take = 7
DECLARE @skip Int32
SET     @skip = 2

SELECT
	`t2`.`ParentID`,
	`t2`.`ChildID`
FROM
	(
		SELECT
			`t1`.`ChildID`,
			`t1`.`ParentID`
		FROM
			`Child` `t1`
		ORDER BY
			`t1`.`ChildID` DESC
		LIMIT @skip_1, @take
	) `t2`
ORDER BY
	`t2`.`ChildID`
LIMIT @skip, 9223372036854775807

