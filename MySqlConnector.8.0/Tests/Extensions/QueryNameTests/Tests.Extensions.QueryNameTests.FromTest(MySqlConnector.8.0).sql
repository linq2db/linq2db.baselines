-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t2`.`ParentID`,
	`t2`.`Value1`
FROM
	(
		SELECT /*+ QB_NAME(PARENT) */
			`t1`.`ParentID`,
			`t1`.`Value1`
		FROM
			`Parent` `t1`
	) `t2`,
	(
		SELECT /*+ QB_NAME(CHILD) */
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
	) `c_2`
WHERE
	`t2`.`ParentID` = `c_2`.`ParentID`

