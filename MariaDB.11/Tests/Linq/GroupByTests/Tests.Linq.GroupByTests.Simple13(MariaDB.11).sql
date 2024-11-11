BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t2`.`ChildID_1`
FROM
	(
		SELECT
			`t1`.`ParentID` + 1 as `ParentID`,
			`t1`.`ChildID`,
			NULL as `ChildID_1`
		FROM
			`GrandChild` `t1`
	) `t2`
GROUP BY
	`t2`.`ParentID`,
	`t2`.`ChildID`

