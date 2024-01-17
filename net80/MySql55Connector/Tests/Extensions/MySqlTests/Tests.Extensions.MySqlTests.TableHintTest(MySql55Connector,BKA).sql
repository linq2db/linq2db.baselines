BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT /*+ BKA(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

