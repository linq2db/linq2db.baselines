-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @token VarChar(2) -- String
SET     @token = 'Bx'

SELECT
	@token
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1

