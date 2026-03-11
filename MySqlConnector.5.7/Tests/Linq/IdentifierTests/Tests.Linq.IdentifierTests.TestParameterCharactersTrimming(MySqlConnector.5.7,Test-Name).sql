-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @TestName Int32
SET     @TestName = 2

UPDATE
	`testparams` `t`
SET
	`t`.`Test-Name` = @TestName
WHERE
	`t`.`Test-Name` = 1

