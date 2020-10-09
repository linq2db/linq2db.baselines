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

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @id Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	`Parent` `_`
WHERE
	`_`.`ParentID` = @id

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

