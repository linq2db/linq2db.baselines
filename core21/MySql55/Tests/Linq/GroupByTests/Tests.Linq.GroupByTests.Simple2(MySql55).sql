BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`GrandChild` `t1`
GROUP BY
	`t1`.`ParentID`,
	`t1`.`ChildID`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 1
DECLARE @ChildID_1 Int32
SET     @ChildID_1 = 11

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`,
	`keyParam`.`GrandChildID`
FROM
	`GrandChild` `keyParam`
WHERE
	(`keyParam`.`ParentID` = @ParentID_1 AND `keyParam`.`ChildID` = @ChildID_1)

