-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ SET_VAR(sort_buffer_size=16M) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

