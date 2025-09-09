BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	COUNT(*),
	1 + MIN(`g_1`.`ChildID`),
	MAX(`g_1`.`ChildID`)
FROM
	`Child` `g_1`
LIMIT @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

