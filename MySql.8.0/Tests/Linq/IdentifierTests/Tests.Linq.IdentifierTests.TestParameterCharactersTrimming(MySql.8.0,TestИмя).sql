BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Test Int32
SET     @Test = 2

UPDATE
	`testparams` `t`
SET
	`t`.`TestИмя` = @Test
WHERE
	`t`.`TestИмя` = 1

