BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT /*+ NO_ICP(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

