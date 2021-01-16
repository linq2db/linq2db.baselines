BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID Int32
SET     @ParentID = 1010
DECLARE @Value1 Int32
SET     @Value1 = 1010

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

UPDATE
	`Parent` `t1`
SET
	`t1`.`Value1` = 1012
WHERE
	`t1`.`ParentID` = 1010

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` >= 1000

