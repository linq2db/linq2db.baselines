BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @ParentID Int32
SET     @ParentID = 1001

INSERT INTO `Parent`
(
	`Value1`,
	`ParentID`
)
VALUES
(
	@Value1,
	@ParentID
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @id Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @id AND `p`.`Value1` = 1

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @id Int32
SET     @id = 1001

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = 2
WHERE
	`p`.`ParentID` = @id

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @id Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @id AND `p`.`Value1` = 2

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

