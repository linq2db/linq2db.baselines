BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @stringValue VarChar(5) -- String
SET     @stringValue = ' abc '

SELECT
	@stringValue as `c1`,
	CHAR_LENGTH(@stringValue) as `c2`

