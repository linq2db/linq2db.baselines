BeforeExecute
-- MySql MySql.Official MySql
DECLARE @skip_1 Int32
SET     @skip_1 = 2
DECLARE @skip Int32
SET     @skip = 5

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC
LIMIT @skip_1, @skip

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @skip_1 Int32
SET     @skip_1 = 2
DECLARE @skip Int32
SET     @skip = 5

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC
LIMIT @skip_1, @skip

