-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p NVarChar(6) -- String
SET     @p = 'Tester'

SELECT
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p
LIMIT 2

