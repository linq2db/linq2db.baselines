BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	(
		SELECT /*+ QB_NAME(PARENT) */
			`p`.`ParentID`,
			`p`.`Value1`
		FROM
			`Parent` `p`
	) `t1`
		CROSS JOIN (
			SELECT /*+ QB_NAME(CHILD) */
				`c_1`.`ParentID`
			FROM
				`Child` `c_1`
		) `c_2`
WHERE
	`t1`.`ParentID` = `c_2`.`ParentID`

