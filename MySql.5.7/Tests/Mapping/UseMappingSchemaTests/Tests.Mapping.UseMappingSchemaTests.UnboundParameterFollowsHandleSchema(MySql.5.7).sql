-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @token VarChar(2) -- String
SET     @token = 'Bx'

SELECT
	@token
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1

