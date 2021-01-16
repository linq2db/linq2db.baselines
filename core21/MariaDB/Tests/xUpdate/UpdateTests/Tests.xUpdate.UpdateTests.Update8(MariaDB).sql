BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = 1001

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Value1 Int32
SET     @Value1 = 1002
DECLARE @ParentID Int32
SET     @ParentID = 1001

UPDATE
	`Parent` `t1`
SET
	`t1`.`Value1` = @Value1
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

