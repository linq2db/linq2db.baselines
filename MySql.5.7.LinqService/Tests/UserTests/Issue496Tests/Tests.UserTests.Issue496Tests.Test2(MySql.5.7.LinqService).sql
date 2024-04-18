﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`key_data_result`.`ParentID`,
	`detail`.`ChildID`,
	`detail`.`ParentID`
FROM
	(
		SELECT DISTINCT
			`_`.`ParentID`
		FROM
			`Parent` `_`
	) `key_data_result`
		INNER JOIN `Child` `detail` ON `key_data_result`.`ParentID` = `detail`.`ParentID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`_`.`ParentID`
FROM
	`Parent` `_`

