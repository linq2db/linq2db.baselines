-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t2`.`ParentID`,
	`t2`.`ParentID_1`,
	`t2`.`ParentID_2`,
	`t2`.`ChildID`
FROM
	(
		SELECT
			`t1`.`ParentID`,
			`c_1`.`ParentID` as `ParentID_1`,
			`c_1`.`ParentID` as `ParentID_2`,
			`c_1`.`ChildID`
		FROM
			`Parent` `t1`
				LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `t1`.`ParentID`
		UNION
		SELECT
			`p`.`ParentID`,
			CAST(NULL AS SIGNED) as `ParentID_1`,
			CAST(NULL AS SIGNED) as `ParentID_2`,
			CAST(NULL AS SIGNED) as `ChildID`
		FROM
			`Parent` `p`
	) `t2`
EXCEPT
SELECT
	`p_1`.`ParentID`,
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED),
	CAST(NULL AS SIGNED)
FROM
	`Parent` `p_1`

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

