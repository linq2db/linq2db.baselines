BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ChildID`,
	AVG(`t1`.`ParentID`)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ChildID`

