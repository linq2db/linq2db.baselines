BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT
	Concat(`c_1`.`ChildID`, ',', @text)
FROM
	`Child` `c_1`
LIMIT 1

