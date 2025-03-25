BeforeExecute
-- Sybase.Managed Sybase
DECLARE @stringValue UniVarChar(1) -- String
SET     @stringValue = ' '

SELECT
	@stringValue,
	CHAR_LENGTH(@stringValue)

