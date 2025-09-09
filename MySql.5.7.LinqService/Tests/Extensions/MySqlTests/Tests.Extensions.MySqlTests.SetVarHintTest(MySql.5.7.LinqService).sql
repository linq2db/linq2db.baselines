BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT /*+ SET_VAR(sort_buffer_size=16M) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

