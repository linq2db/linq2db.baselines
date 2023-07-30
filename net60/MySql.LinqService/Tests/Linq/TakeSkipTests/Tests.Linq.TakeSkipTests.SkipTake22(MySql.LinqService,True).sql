BeforeExecute
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 2
DECLARE @skip_1 Int32
SET     @skip_1 = 5

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC
LIMIT @skip, @skip_1

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 2
DECLARE @skip_1 Int32
SET     @skip_1 = 5

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC
LIMIT @skip, @skip_1

