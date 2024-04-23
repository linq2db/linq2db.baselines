BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
	) `t1`,
	(
		SELECT /*+ QB_NAME(CHILD) */
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
	) `c_2`
WHERE
	`t1`.`ParentID` = `c_2`.`ParentID`

