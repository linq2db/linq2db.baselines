BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ChildID Int32
SET     @ChildID = 10

UPDATE
	`Child` `x`
		INNER JOIN `Parent` `c_1` ON `c_1`.`ParentID` = `x`.`ParentID`
		INNER JOIN `Parent` `c_2` ON `x`.`ParentID` = `x`.`ChildID`
SET
	`x`.`ChildID` = @ChildID
WHERE
	1 = 0

