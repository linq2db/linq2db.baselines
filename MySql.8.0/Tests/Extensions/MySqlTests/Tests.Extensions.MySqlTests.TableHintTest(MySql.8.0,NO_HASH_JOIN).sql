BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT /*+ NO_HASH_JOIN(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

