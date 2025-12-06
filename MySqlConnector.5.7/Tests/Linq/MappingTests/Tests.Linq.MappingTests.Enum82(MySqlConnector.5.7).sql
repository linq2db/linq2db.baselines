-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @testValue Int32
SET     @testValue = 1

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`Value1` = @testValue

