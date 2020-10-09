BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 3

SELECT 
	`t1`.`ParentID`, 
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT @take

