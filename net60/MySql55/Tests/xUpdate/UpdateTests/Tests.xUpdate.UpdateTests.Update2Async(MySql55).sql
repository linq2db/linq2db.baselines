BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
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
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @ParentID

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1001

UPDATE
	`Parent` `p`
SET
	`p`.`ParentID` = `p`.`ParentID` + 1
WHERE
	`p`.`ParentID` = @ParentID

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1002

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @ParentID

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

