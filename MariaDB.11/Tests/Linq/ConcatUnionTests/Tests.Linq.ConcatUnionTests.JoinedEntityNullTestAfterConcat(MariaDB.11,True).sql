-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x_1`.`ParentID`
FROM
	(
		SELECT
			`x`.`ParentID`,
			CAST(NULL AS SIGNED) as `Child`
		FROM
			`Parent` `x`
		UNION ALL
		SELECT
			`t1`.`ParentID`,
			`c_1`.`ParentID` as `Child`
		FROM
			`Parent` `t1`
				LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `t1`.`ParentID`
	) `x_1`
WHERE
	`x_1`.`Child` IS NULL

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

