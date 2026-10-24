-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @v1 Int32
SET     @v1 = 1

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = @v1
WHERE
	`p`.`Value1` = @v1

