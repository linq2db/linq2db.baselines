BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	MAX(`c_1`.`ParentID`)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	MAX(`c_1`.`ParentID`)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID

