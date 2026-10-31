-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`c_1`.`ChildID`,
	`p`.`ParentID`
FROM
	`Child` `c_1`
		LEFT JOIN `Parent` `p` ON 1 = 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

