BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @p
LIMIT @p

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 2

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @p
LIMIT @p

