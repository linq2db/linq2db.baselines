-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ BNL(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

