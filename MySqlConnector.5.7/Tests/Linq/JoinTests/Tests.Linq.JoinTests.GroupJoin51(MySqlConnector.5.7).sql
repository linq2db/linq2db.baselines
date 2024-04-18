﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`key_data_result`.`ParentID`,
	`key_data_result`.`Value1`,
	`_gjd_ch`.`ParentID`,
	`_gjd_ch`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`,
			`p`.`Value1`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` = 1
	) `key_data_result`
		INNER JOIN `Child` `_gjd_ch` ON `_gjd_ch`.`ParentID` = `key_data_result`.`ParentID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`key_data_result`.`ParentID`,
	`key_data_result`.`Value1`,
	`_ch`.`ParentID`,
	`_ch`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`,
			`p`.`Value1`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` = 1
	) `key_data_result`
		INNER JOIN `Child` `_ch` ON `_ch`.`ParentID` = `key_data_result`.`ParentID`
ORDER BY
	`_ch`.`ChildID` DESC

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1

