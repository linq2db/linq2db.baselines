-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ NO_BKA(p) MERGE(p, c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `c_1`

