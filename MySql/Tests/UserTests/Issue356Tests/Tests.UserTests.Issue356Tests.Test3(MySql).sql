﻿BeforeExecute
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 10
DECLARE @take Int32
SET     @take = 10
DECLARE @take_1 Int32
SET     @take_1 = 10

SELECT
	`cp`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `cp`
		CROSS JOIN (
			SELECT
				`t3`.`ParentID`,
				`t3`.`ChildID`
			FROM
				(
					SELECT
						`t1`.`ParentID`,
						`t1`.`ChildID`
					FROM
						`Child` `t1`
					UNION
					SELECT
						`t2`.`ParentID`,
						`t2`.`ChildID`
					FROM
						`Child` `t2`
				) `t3`
			ORDER BY
				`t3`.`ParentID`
			LIMIT @skip, @take
		) `c_1`
WHERE
	`c_1`.`ParentID` = `cp`.`ParentID`
ORDER BY
	`cp`.`ParentID`
LIMIT @take_1

