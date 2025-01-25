BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p NVarChar(2) -- String
SET     @p = 'oh'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CharIndex(@p, [p].[FirstName]) - 1 = 1 AND [p].[PersonID] = 1

