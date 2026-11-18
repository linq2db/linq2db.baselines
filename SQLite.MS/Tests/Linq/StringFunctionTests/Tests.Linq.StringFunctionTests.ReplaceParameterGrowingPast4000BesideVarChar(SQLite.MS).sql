-- SQLite.MS SQLite
DECLARE @replacement NVarChar(2) -- String
SET     @replacement = 'bb'

SELECT
	Replace([t].[V4], 'a', @replacement)
FROM
	[ShortVarCharRow] [t]
LIMIT 2

