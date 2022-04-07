BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	Count(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	Count(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID

