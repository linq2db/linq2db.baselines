BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`selectParam`.`ChildID`,
	Avg(`selectParam`.`ParentID`)
FROM
	`Child` `selectParam`
GROUP BY
	`selectParam`.`ChildID`

