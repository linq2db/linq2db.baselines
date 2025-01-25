BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 2

SELECT
	`c_1`.`ParentID`,
	`c_1`.`Value1`
FROM
	`Parent` `c_1`
WHERE
	`c_1`.`ParentID` = @id

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

