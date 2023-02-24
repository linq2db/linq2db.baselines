BeforeExecute
-- MySqlConnector MySql
DECLARE @skip_2 Int32
SET     @skip_2 = 3
DECLARE @skip_3 Int32
SET     @skip_3 = 5

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID`
LIMIT @skip_2, @skip_3

BeforeExecute
-- MySqlConnector MySql
DECLARE @skip_2 Int32
SET     @skip_2 = 3
DECLARE @skip_3 Int32
SET     @skip_3 = 5

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID`
LIMIT @skip_2, @skip_3

