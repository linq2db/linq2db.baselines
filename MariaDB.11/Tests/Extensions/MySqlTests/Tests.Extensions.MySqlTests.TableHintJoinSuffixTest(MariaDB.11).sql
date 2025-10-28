BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ JOIN_SUFFIX(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

