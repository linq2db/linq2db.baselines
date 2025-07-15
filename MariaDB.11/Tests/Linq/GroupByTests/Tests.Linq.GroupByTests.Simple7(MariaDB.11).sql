BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`gr`.`ParentID`,
	`gr`.`ChildID`
FROM
	`GrandChild` `gr`
GROUP BY
	`gr`.`ParentID`,
	`gr`.`ChildID`

