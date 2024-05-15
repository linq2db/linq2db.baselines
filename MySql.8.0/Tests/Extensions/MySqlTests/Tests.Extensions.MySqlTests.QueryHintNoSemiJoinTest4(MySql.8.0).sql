BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT /*+ NO_SEMIJOIN(FIRSTMATCH, LOOSESCAN) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `c_1`

