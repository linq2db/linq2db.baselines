-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT DISTINCT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` < 4
ORDER BY
	`c_1`.`ChildID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT DISTINCT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` < 4

