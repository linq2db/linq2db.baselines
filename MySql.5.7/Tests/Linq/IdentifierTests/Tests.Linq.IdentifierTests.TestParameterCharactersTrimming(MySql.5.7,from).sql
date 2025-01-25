BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @from Int32
SET     @from = 2

UPDATE
	`testparams` `t`
SET
	`t`.`from` = @from
WHERE
	`t`.`from` = 1

