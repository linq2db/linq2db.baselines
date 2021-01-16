BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ChildID Int32
SET     @ChildID = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
SELECT
	`c_1`.`ParentID`,
	@ChildID
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = 11

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

