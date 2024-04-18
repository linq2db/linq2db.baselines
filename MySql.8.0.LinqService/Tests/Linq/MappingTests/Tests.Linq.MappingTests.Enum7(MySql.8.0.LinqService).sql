BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @v1 Int32
SET     @v1 = 1

UPDATE
	`Parent` `t1`
SET
	`t1`.`Value1` = @v1
WHERE
	`t1`.`Value1` = @v1

