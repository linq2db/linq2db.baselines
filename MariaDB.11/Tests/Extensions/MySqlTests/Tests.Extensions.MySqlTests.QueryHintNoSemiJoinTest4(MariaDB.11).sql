-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ NO_SEMIJOIN(FIRSTMATCH, LOOSESCAN) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `c_1`

