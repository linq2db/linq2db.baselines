-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @suffix NVarChar(1) -- String
SET     @suffix = '-'

SELECT
	[r].[Plain] || [r].[Conv] || Coalesce(@suffix, '')
FROM
	[PlainAndConvertedUnicodeRow] [r]
LIMIT 2

