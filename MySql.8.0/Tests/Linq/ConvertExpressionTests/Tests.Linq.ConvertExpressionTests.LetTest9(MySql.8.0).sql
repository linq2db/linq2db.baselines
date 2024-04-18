﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 1
DECLARE @take_1 Int32
SET     @take_1 = 10

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN LATERAL (
			SELECT
				`c_1`.`ParentID`,
				`c_1`.`ChildID`
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ParentID` = `p`.`ParentID`
			ORDER BY
				`c_1`.`ChildID`
			LIMIT @take
		) `t1` ON 1=1
LIMIT @take_1

