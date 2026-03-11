-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ NO_MERGE(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

