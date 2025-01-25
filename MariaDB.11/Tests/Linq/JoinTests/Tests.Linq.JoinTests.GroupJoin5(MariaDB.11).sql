BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Parent` `t2`
		LEFT JOIN (
			SELECT
				`ch`.`ParentID`,
				`ch`.`ChildID`,
				ROW_NUMBER() OVER (PARTITION BY `ch`.`ParentID` ORDER BY `ch`.`ChildID`) as `rn`
			FROM
				`Child` `ch`
		) `t1` ON `t2`.`ParentID` = `t1`.`ParentID` AND `t1`.`rn` <= 1
WHERE
	`t2`.`ParentID` >= 1
ORDER BY
	`t2`.`ParentID`

