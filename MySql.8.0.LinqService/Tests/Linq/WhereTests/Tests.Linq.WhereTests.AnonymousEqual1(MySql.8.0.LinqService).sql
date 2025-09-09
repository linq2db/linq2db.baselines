BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 2
DECLARE @ChildID Int32
SET     @ChildID = 21

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	`ch`.`ParentID` = @ParentID AND `ch`.`ChildID` = @ChildID

