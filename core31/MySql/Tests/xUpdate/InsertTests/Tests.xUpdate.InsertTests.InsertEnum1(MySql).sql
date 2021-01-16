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
SET     @Value1 = 2

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	1001,
	@Value1
)

BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

