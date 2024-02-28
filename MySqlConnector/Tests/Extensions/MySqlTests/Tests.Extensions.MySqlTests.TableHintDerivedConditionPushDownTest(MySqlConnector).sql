BeforeExecute
-- MySqlConnector MySql

SELECT /*+ DERIVED_CONDITION_PUSHDOWN(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

