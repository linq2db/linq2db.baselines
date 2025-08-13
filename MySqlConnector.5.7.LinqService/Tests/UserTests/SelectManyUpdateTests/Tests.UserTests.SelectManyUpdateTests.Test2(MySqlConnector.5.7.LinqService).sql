BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ChildID Int32
SET     @ChildID = 10

UPDATE
	`Child` `a_Children`,
	`Parent` `x`
		INNER JOIN `Child` `a_Children_1` ON `x`.`ParentID` = `a_Children_1`.`ParentID`
SET
	`a_Children`.`ChildID` = @ChildID
WHERE
	1 = 0

