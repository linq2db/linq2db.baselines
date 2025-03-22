BeforeExecute
-- SQLite.MS SQLite
DECLARE @stringValue NVarChar(4) -- String
SET     @stringValue = 'abc '

SELECT
	@stringValue,
	LENGTH(@stringValue)

