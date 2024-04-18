BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID

