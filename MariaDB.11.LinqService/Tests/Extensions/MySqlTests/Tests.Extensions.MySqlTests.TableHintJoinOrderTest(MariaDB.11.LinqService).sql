BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT /*+ JOIN_ORDER(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

