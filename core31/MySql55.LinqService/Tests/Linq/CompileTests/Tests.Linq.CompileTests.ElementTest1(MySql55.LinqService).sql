BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ParentID Int32
SET     @ParentID = 2
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID
LIMIT @take

