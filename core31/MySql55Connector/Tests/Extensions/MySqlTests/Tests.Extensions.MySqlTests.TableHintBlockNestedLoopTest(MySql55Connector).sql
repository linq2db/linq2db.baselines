BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT /*+ BNL(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

