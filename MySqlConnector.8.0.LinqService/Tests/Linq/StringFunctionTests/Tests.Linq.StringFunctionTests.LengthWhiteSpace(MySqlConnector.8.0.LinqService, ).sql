BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @stringValue VarChar(1) -- String
SET     @stringValue = ' '

SELECT
	@stringValue as `c1`,
	CHAR_LENGTH(@stringValue) as `c2`

