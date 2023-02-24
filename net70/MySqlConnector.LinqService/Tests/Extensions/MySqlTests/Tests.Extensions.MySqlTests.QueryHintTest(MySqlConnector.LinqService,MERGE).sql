BeforeExecute
-- MySqlConnector MySql

SELECT /*+ NO_BKA(p) MERGE(p, c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`,
	`Child` `c_1`

