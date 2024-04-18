BeforeExecute
BeginTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @v1 Int32
SET     @v1 = 1

UPDATE
	`Parent` `t1`
SET
	`t1`.`Value1` = @v1
WHERE
	`t1`.`Value1` = @v1

