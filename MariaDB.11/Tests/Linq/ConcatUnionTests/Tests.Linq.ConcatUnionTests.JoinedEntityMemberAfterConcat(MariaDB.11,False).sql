-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x_1`.`ParentID`,
	CASE
		WHEN `x_1`.`ParentID_1` IS NULL THEN -1
		WHEN `x_1`.`projection__set_id__` = 0 THEN `x_1`.`ChildID`
		ELSE NULL
	END
FROM
	(
		SELECT
			`x`.`ParentID`,
			`c_1`.`ParentID` as `ParentID_1`,
			`c_1`.`ChildID`,
			CAST(0 AS SIGNED) as `projection__set_id__`
		FROM
			`Parent` `x`
				LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `x`.`ParentID`
		UNION ALL
		SELECT
			`p`.`ParentID`,
			CAST(NULL AS SIGNED) as `ParentID_1`,
			CAST(NULL AS SIGNED) as `ChildID`,
			CAST(1 AS SIGNED) as `projection__set_id__`
		FROM
			`Parent` `p`
	) `x_1`

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

