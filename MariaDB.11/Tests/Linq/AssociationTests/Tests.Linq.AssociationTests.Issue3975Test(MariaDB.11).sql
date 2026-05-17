-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
		LIMIT 1
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`
FROM
	`Parent` `t1`
LIMIT 1

