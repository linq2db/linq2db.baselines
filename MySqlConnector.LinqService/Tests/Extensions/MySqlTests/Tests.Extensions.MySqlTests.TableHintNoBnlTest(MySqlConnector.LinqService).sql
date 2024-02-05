BeforeExecute
-- MySqlConnector MySql

SELECT /*+ NO_BNL(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

