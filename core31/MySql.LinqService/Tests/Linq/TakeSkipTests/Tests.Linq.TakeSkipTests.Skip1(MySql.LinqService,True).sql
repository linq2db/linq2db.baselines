BeforeExecute
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 3

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT @skip,9223372036854775807

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 4

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT @skip,9223372036854775807

