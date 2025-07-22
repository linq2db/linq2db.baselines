BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT
	Concat(`c_1`.`ChildID`, ',', Coalesce(@text, ''))
FROM
	`Child` `c_1`
LIMIT 1

