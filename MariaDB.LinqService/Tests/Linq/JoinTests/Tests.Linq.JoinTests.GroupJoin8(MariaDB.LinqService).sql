﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`key_data_result`.`ParentID`,
	`key_data_result`.`Value1`,
	`_c`.`ParentID`,
	`_c`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`,
			`p`.`Value1`
		FROM
			`Parent` `p`
	) `key_data_result`
		INNER JOIN `Child` `_c` ON `_c`.`ParentID` = `key_data_result`.`ParentID`
ORDER BY
	`_c`.`ChildID`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

