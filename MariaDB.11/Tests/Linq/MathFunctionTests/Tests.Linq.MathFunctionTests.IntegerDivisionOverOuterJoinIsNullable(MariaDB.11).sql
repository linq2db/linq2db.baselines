-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `p`.`ParentID`
WHERE
	`c_1`.`ChildID` DIV 2 <> 10 OR `c_1`.`ChildID` IS NULL

