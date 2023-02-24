﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector MySql

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
DisposeTransaction
BeforeExecute
-- MySqlConnector MySql

SELECT
	`_`.`ParentID`
FROM
	`Parent` `_`

