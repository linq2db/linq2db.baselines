-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x_1`.`ParentID`,
	CASE
		WHEN `x_1`.`Child` IS NULL THEN -1
		WHEN `x_1`.`projection__set_id__` = 0 THEN NULL
		ELSE `x_1`.`ChildID`
	END
FROM
	(
		SELECT
			`x`.`ParentID`,
			CAST(NULL AS SIGNED) as `Child`,
			CAST(NULL AS SIGNED) as `ChildID`,
			CAST(0 AS SIGNED) as `projection__set_id__`
		FROM
			`Parent` `x`
		UNION ALL
		SELECT
			`t1`.`ParentID`,
			`c_1`.`ParentID` as `Child`,
			`c_1`.`ChildID`,
			CAST(1 AS SIGNED) as `projection__set_id__`
		FROM
			`Parent` `t1`
				LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `t1`.`ParentID`
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

