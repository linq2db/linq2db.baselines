-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`,
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	(
		SELECT
			`t`.`ParentID`
		FROM
			`Parent` `t`
		LIMIT 1
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`
		LEFT JOIN `Parent` `a_Parent` ON `d`.`ParentID` = `a_Parent`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
LIMIT 1

