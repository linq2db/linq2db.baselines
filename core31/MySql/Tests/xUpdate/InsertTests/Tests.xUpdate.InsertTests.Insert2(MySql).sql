BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @id Int32
SET     @id = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

