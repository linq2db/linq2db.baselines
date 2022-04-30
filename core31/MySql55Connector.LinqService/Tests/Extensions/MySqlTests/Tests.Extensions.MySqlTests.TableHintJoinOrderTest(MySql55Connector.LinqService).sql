BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT /*+ JOIN_ORDER(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

