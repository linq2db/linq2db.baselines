BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t1`.`ParentID`, 
	`t1`.`ChildID`, 
	`a_Parent`.`ParentID`, 
	`a_Parent`.`Value1`
FROM
	`Child` `t1`
		INNER JOIN `Parent` `a_Parent` ON `t1`.`ParentID` = `a_Parent`.`ParentID`
LIMIT @take

