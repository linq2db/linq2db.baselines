-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT /*+ NO_ICP(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

