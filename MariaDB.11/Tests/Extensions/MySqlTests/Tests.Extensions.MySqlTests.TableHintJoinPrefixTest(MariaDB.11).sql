BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ JOIN_PREFIX(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

