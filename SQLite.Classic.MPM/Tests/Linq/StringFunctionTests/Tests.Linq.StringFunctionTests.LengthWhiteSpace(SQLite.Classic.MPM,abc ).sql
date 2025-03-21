BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @stringValue NVarChar(4) -- String
SET     @stringValue = 'abc '

SELECT
	@stringValue,
	LENGTH(@stringValue)

