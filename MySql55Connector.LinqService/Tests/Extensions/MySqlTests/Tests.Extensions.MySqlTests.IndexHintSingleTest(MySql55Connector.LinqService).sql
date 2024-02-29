BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT /*+ INDEX(p parent_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

