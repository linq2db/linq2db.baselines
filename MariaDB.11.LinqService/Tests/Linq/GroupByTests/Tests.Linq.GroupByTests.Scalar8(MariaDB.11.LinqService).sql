BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	MAX(`id`.`ChildID`)
FROM
	`Child` `id`
GROUP BY
	`id`.`ParentID`

