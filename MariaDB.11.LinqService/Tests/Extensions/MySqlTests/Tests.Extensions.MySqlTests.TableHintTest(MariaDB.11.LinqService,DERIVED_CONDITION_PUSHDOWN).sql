BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT /*+ DERIVED_CONDITION_PUSHDOWN(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

