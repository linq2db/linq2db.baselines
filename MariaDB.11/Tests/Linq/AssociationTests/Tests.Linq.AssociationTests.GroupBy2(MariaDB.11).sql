-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`ParentID`,
	`m_1`.`Value1`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`a_Parent1`.`ParentID`,
			`a_Parent1`.`Value1`
		FROM
			`Child` `t1`
				INNER JOIN `Parent` `a_Parent1` ON `t1`.`ParentID` = `a_Parent1`.`ParentID`
	) `m_1`
		INNER JOIN (`Child` `d`
			INNER JOIN `Parent` `a_Parent1_1` ON `d`.`ParentID` = `a_Parent1_1`.`ParentID`)
		ON `m_1`.`ParentID` = `a_Parent1_1`.`ParentID` AND `m_1`.`Value1` IS NULL

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT DISTINCT
	`a_Parent1`.`ParentID`,
	`a_Parent1`.`Value1`
FROM
	`Child` `t1`
		INNER JOIN `Parent` `a_Parent1` ON `t1`.`ParentID` = `a_Parent1`.`ParentID`

