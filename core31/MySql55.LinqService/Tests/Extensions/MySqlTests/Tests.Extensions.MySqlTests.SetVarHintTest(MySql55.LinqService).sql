BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ SET_VAR(sort_buffer_size=16M) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

