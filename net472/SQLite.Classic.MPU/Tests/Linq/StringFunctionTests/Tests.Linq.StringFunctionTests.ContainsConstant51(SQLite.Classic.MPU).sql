BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ps_1 NVarChar(4) -- String
SET     @ps_1 = '%~[%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123[456' LIKE @ps_1 ESCAPE '~'

