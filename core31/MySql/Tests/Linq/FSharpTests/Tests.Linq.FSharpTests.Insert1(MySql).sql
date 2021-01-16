BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @ChildID Int32
SET     @ChildID = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	@ParentID,
	@ChildID
)

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

