-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE   `t1`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `ch` ON `t1`.`ParentID` = `ch`.`ParentID`
WHERE
	`ch`.`ParentID` = -1 OR `ch`.`ParentID` IS NULL AND `t1`.`ParentID` = -1

