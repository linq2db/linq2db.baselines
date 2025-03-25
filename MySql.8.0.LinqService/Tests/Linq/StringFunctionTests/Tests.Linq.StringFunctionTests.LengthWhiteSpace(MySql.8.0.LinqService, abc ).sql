BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @stringValue VarChar(5) -- String
SET     @stringValue = ' abc '

SELECT
	@stringValue as `c1`,
	CHAR_LENGTH(@stringValue) as `c2`

