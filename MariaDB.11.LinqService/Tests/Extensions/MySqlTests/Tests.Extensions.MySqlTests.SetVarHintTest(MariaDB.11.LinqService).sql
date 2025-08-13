BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT /*+ SET_VAR(sort_buffer_size=16M) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

