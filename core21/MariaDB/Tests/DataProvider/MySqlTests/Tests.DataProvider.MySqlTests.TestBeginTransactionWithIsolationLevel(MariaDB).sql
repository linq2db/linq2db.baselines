BeforeExecute
-- MariaDB MySql.Official MySql

UPDATE
	`Parent` `t1`
SET
	`t1`.`Value1` = 1
WHERE
	`t1`.`ParentID` = 1

BeforeExecute
-- MariaDB MySql.Official MySql

UPDATE
	`Parent` `t1`
SET
	`t1`.`Value1` = NULL
WHERE
	`t1`.`ParentID` = 1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT @take

