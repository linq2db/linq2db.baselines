BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @TestName Int32
SET     @TestName = 2

UPDATE
	`testparams` `t`
SET
	`t`.`Test-Name` = @TestName
WHERE
	`t`.`Test-Name` = 1

