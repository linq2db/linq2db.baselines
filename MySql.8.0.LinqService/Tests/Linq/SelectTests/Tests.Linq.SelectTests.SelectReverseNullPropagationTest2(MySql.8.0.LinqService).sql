﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `c_1` ON (`t1`.`Value1` = `c_1`.`ParentID` OR `t1`.`Value1` IS NULL AND `c_1`.`ParentID` IS NULL)
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`

