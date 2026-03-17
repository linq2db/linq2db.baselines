-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ JOIN_ORDER(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

