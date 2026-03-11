-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ps NVarChar(4) -- String
SET     @ps = '%~[%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123[456' LIKE @ps ESCAPE '~'

