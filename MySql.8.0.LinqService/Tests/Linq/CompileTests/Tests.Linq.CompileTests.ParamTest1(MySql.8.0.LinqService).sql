BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 2

SELECT
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @p

