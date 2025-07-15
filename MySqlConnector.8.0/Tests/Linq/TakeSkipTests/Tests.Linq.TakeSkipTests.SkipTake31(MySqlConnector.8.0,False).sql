BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 5

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 5

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC
LIMIT @skip, @take

