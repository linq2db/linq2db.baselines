﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`user_1`.`ParentID`
FROM
	`Parent` `employee`
		LEFT JOIN `GrandChild` `names_1` ON `employee`.`ParentID` = `names_1`.`ParentID`
		LEFT JOIN `Parent` `user_1` ON `employee`.`ParentID` = `user_1`.`ParentID`

