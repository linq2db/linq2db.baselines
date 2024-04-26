BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	MAX(`c_1`.`ParentID`)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	MAX(`c_1`.`ParentID`)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID

