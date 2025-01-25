﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`ParentID`,
	`m_1`.`Value1`
FROM
	`Parent` `m_1`
		INNER JOIN (
			SELECT
				`id`.`ParentID`
			FROM
				`Parent` `id`
			WHERE
				`id`.`ParentID` = 1
			UNION ALL
			SELECT
				`t`.`ParentID`
			FROM
				`Parent` `t`
			WHERE
				`t`.`ParentID` = 2
		) `id_1` ON `id_1`.`ParentID` = `m_1`.`ParentID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`ParentID`,
	`m_1`.`Value1`
FROM
	`Parent` `m_1`,
	(
		SELECT
			`id`.`ParentID`
		FROM
			`Parent` `id`
		WHERE
			`id`.`ParentID` = 1
		UNION ALL
		SELECT
			`t`.`ParentID`
		FROM
			`Parent` `t`
		WHERE
			`t`.`ParentID` = 2
	) `id_1`
WHERE
	`id_1`.`ParentID` = `m_1`.`ParentID`

