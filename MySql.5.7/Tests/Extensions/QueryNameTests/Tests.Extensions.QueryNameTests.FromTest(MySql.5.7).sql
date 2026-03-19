-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

