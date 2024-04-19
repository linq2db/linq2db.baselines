BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 2

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC
LIMIT @skip, 5

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 2

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC
LIMIT @skip, 5

