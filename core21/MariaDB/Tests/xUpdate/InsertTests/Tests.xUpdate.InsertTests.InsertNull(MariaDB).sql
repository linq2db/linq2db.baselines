BeforeExecute
-- MariaDB MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = 1001

BeforeExecute
-- MariaDB MySql
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
-- MariaDB MySql

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1001

BeforeExecute
-- MariaDB MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`Value1` = 1001

