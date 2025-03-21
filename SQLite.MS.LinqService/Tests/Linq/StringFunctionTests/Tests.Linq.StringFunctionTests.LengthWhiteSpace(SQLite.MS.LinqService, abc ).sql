BeforeExecute
-- SQLite.MS SQLite
DECLARE @stringValue NVarChar(5) -- String
SET     @stringValue = ' abc '

SELECT
	@stringValue,
	LENGTH(@stringValue)

