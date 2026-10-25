-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @token VarChar(2) -- String
SET     @token = 'Bx'

SELECT
	@token
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1

