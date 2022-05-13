BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT /*+ NO_MERGE(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

