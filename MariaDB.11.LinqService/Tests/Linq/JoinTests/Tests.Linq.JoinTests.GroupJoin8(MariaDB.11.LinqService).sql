BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Parent` `t2`
		LEFT JOIN (
			SELECT
				`c_1`.`ParentID`,
				`c_1`.`ChildID`,
				ROW_NUMBER() OVER (PARTITION BY `c_1`.`ParentID` ORDER BY `c_1`.`ChildID`) as `rn`
			FROM
				`Child` `c_1`
		) `t1` ON `t2`.`ParentID` = `t1`.`ParentID` AND `t1`.`rn` <= 1

