BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT /*+ HASH_JOIN(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

