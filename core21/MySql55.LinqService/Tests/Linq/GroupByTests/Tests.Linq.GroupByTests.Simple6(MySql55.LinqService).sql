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
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @ChildID Int32
SET     @ChildID = 11

SELECT
	`ch`.`GrandChildID`
FROM
	`GrandChild` `ch`
WHERE
	(`ch`.`ParentID` = @ParentID AND `ch`.`ChildID` = @ChildID)

