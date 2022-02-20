BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	(
		SELECT /*+ QB_NAME(PARENT) */
			`t1`.`ParentID`,
			`t1`.`Value1`
		FROM
			`Parent` `t1`
	) `p`,
	(
		SELECT /*+ QB_NAME(CHILD) */
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
	) `t2`
WHERE
	`p`.`ParentID` = `t2`.`ParentID`

