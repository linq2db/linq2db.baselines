BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = NULL

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
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1001

