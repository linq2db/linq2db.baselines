BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT /*+ MERGE(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

