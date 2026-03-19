-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `ch` ON `t1`.`ParentID` = `ch`.`ParentID`
WHERE
	`ch`.`ParentID` IS NOT NULL

