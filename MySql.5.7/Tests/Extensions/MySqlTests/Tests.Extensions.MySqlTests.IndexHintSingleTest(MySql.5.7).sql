-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT /*+ INDEX(p parent_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

