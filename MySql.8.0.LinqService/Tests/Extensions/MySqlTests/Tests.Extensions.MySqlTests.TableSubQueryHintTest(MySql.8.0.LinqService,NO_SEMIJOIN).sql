BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT /*+ NO_SEMIJOIN(@qq FIRSTMATCH, LOOSESCAN) */
	`p_1`.`ParentID`,
	`p_1`.`Value1`
FROM
	(
		SELECT /*+ QB_NAME(qq) */
			`p`.`ParentID`,
			`p`.`Value1`
		FROM
			`Parent` `p`
				CROSS JOIN `Child` `c_1`
	) `p_1`

