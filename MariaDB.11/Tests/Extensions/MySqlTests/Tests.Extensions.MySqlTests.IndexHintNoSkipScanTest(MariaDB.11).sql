-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ NO_SKIP_SCAN(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

