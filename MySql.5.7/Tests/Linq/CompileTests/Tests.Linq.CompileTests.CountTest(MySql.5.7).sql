BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID

