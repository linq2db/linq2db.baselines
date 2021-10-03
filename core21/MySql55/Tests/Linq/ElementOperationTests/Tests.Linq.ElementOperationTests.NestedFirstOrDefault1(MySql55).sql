BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT @take

BeforeExecute
-- MySql55 MySql

SELECT
	1
FROM
	`Parent` `p`

