-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ MAX_EXECUTION_TIME(1000) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p` ON `c_1`.`ParentID` = `p`.`ParentID`

