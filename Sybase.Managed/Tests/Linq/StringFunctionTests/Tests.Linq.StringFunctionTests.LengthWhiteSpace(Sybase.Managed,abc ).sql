BeforeExecute
-- Sybase.Managed Sybase
DECLARE @stringValue UniVarChar(4) -- String
SET     @stringValue = 'abc '

SELECT
	@stringValue,
	CHAR_LENGTH(@stringValue)

