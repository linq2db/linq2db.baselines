-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT /*+ NO_RANGE_OPTIMIZATION(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

