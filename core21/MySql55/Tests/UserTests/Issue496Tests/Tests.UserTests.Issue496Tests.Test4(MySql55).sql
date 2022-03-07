﻿BeforeExecute
BeginTransaction
BeforeExecute
-- MySql55 MySql.Official MySql

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
RollbackTransaction
BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`_`.`ParentID`
FROM
	`Parent` `_`

