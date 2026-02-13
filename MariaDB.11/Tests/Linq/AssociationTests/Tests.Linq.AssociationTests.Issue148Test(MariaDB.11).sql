-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`Item1`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`n`.`ParentID` as `Item1`
		FROM
			`Parent` `n`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`Item1` = `d`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`Item1`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`n`.`ParentID` as `Item1`
		FROM
			`Parent` `n`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`Item1` = `d`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`Item1`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`n`.`ParentID` as `Item1`
		FROM
			`Parent` `n`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`Item1` = `d`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`n`.`ParentID`
FROM
	`Parent` `n`

