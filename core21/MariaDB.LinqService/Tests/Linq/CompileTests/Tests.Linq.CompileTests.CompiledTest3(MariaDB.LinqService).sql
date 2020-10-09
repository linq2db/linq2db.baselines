BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 1
DECLARE @p1 Int32
SET     @p1 = 1

SELECT 
	`c_1`.`ParentID`, 
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID_1
LIMIT @p1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 2
DECLARE @p1 Int32
SET     @p1 = 2

SELECT 
	`c_1`.`ParentID`, 
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID_1
LIMIT @p1

