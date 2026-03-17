-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT DISTINCT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` IN (
		SELECT DISTINCT
			`a_Parent`.`ParentID`
		FROM
			`Child` `c_1`
				LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
	)
ORDER BY
	`p`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`,
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`Child` `t1`
		LEFT JOIN `Parent` `a_Parent` ON `t1`.`ParentID` = `a_Parent`.`ParentID`

