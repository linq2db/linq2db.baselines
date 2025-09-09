BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @GrandChildID Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int32
SET     @ParentID = 10000

UPDATE
	`GrandChild` `t1`
SET
	`t1`.`GrandChildID` = @GrandChildID
WHERE
	`t1`.`ParentID` = @ParentID AND `t1`.`ChildID` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @GrandChildID Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int32
SET     @ParentID = 10000
DECLARE @ChildID Int32
SET     @ChildID = 111

UPDATE
	`GrandChild` `t1`
SET
	`t1`.`GrandChildID` = @GrandChildID
WHERE
	`t1`.`ParentID` = @ParentID AND `t1`.`ChildID` = @ChildID

