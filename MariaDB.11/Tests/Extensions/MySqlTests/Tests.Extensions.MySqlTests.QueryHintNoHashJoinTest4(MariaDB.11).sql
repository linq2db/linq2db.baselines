BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT /*+ NO_HASH_JOIN(c_1, p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p` ON `c_1`.`ParentID` = `p`.`ParentID`

