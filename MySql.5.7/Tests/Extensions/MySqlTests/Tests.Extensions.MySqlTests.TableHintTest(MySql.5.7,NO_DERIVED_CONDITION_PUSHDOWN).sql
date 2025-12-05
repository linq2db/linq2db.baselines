-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT /*+ NO_DERIVED_CONDITION_PUSHDOWN(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

