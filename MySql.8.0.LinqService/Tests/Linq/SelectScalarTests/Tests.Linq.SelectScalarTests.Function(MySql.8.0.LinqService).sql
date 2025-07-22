BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @text VarChar(3) -- String
SET     @text = '123'

SELECT
	Concat(`c_1`.`ChildID`, ',', Coalesce(@text, ''))
FROM
	`Child` `c_1`
LIMIT 1

