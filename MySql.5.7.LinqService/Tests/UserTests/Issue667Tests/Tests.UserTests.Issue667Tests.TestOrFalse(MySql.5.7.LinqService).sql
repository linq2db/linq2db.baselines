﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`f`.`ParentID`,
	`f`.`Value1`
FROM
	`Parent` `f`
WHERE
	(`f`.`ParentID` >= 1 OR `f`.`ParentID` <= 4)

