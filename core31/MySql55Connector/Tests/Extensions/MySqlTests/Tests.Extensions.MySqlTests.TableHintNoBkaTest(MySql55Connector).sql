BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT /*+ NO_BKA(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

