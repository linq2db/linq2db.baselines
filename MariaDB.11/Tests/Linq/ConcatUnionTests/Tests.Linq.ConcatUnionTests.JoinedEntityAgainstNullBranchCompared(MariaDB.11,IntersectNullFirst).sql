-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`ParentID`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED)
FROM
	`Parent` `p`
INTERSECT
SELECT
	`t1`.`ParentID`,
	`c_1`.`ParentID`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `t1`.`ParentID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

