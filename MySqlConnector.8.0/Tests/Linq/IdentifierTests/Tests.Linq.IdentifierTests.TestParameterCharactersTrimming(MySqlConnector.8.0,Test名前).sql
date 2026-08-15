-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Test Int32
SET     @Test = 2

UPDATE
	`testparams` `t`
SET
	`t`.`Test名前` = @Test
WHERE
	`t`.`Test名前` = 1

