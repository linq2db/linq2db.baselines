BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT /*+ INDEX(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

