BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ChildID`
FROM
	`GrandChild` `t1`
GROUP BY
	`t1`.`ParentID`,
	`t1`.`ChildID`

