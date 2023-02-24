BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @skip_1 Int32
SET     @skip_1 = 3
DECLARE @skip Int32
SET     @skip = 5

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID`
LIMIT @skip_1, @skip

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @skip_1 Int32
SET     @skip_1 = 3
DECLARE @skip Int32
SET     @skip = 5

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID`
LIMIT @skip_1, @skip

