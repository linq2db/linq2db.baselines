-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 3

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT @take

