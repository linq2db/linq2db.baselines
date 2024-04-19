BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID` + 1
FROM
	(
		SELECT DISTINCT
			`p2`.`ParentID`
		FROM
			`Parent` `p2`
		WHERE
			`p2`.`ParentID` + 1 > 0 AND `p2`.`ParentID` + 2 > 0
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID` AND `d`.`ParentID` + 1 < `m_1`.`ParentID` + 2 AND `d`.`ParentID` + 1 < `m_1`.`ParentID` + 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p1`.`ParentID`
FROM
	`Parent` `p1`
WHERE
	`p1`.`ParentID` + 1 > 0 AND `p1`.`ParentID` + 2 > 0

