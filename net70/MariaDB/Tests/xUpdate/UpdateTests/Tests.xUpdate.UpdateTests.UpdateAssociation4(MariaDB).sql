﻿BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `Child`
(
	`ChildID`,
	`ParentID`
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Value1 Int32
SET     @Value1 = 5

UPDATE
	`Parent` `t1`
		INNER JOIN `Child` `a_Parent` ON `a_Parent`.`ParentID` = `t1`.`ParentID`
SET
	`t1`.`Value1` = @Value1
WHERE
	`a_Parent`.`ChildID` = 10000

