BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT /*+ NO_BKA(p) DERIVED_CONDITION_PUSHDOWN(p, c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`,
	`Child` `c_1`

