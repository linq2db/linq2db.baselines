BeforeExecute
-- Sybase.Managed Sybase
DECLARE @stringValue UniVarChar(5) -- String
SET     @stringValue = ' abc '

SELECT
	@stringValue,
	CHAR_LENGTH(@stringValue)

