﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`m_1`.`ParentID`,
	`d`.`ChildID`,
	`d`.`ParentID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN `Child` `d` ON CAST(`m_1`.`ParentID` AS SIGNED) = `d`.`ParentID`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

