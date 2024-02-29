BeforeExecute
-- MySqlConnector MySql

SELECT /*+ JOIN_FIXED_ORDER(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

