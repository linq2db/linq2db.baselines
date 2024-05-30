BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @n Int32
SET     @n = 1

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT @n

