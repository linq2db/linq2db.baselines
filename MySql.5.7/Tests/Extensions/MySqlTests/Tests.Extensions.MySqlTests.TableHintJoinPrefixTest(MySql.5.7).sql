-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT /*+ JOIN_PREFIX(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

