-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT /*+ SET_VAR(sort_buffer_size=16M) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

