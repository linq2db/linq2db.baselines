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

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 2

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 3

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 4

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 6

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 7

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID

