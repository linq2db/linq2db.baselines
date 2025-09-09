BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT /*+ HASH_JOIN(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

