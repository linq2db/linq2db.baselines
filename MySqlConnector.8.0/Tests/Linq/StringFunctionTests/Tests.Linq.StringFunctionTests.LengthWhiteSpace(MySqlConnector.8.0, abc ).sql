BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @stringValue VarChar(5) -- String
SET     @stringValue = ' abc '

SELECT
	@stringValue as `c1`,
	CHAR_LENGTH(@stringValue) as `c2`

