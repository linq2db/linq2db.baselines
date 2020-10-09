BeforeExecute
-- MySqlConnector MySql
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 2
DECLARE @ChildID_1 Int32
SET     @ChildID_1 = 21

SELECT 
	`ch`.`ParentID`, 
	`ch`.`ChildID`
FROM
	`Child` `ch`
WHERE
	NOT (`ch`.`ParentID` = @ParentID_1 AND `ch`.`ChildID` = @ChildID_1)

