BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Max(`id`.`ChildID`)
FROM
	`Child` `id`
GROUP BY
	`id`.`ParentID`

