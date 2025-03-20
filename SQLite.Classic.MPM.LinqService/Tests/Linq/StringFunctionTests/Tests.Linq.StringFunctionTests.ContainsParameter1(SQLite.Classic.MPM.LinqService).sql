BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @CS8__locals1_str NVarChar(4) -- String
SET     @CS8__locals1_str = '%oh%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @CS8__locals1_str ESCAPE '~' AND
	[p].[PersonID] = 1

