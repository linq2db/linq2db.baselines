-- SQLite.Classic SQLite
DECLARE @replacement NVarChar(1) -- String
SET     @replacement = 'e'

SELECT
	Coalesce(Replace([t].[Left], 'b', @replacement), '') || [t].[Right],
	Coalesce(Replace([t].[Left], 'b', @replacement), '') || Coalesce(Replace([t].[Right], 'c', @replacement), '')
FROM
	[DbTypeOnlyVarCharRow] [t]
LIMIT 2

