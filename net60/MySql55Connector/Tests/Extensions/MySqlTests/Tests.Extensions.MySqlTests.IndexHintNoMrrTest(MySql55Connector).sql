BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT /*+ NO_MRR(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

