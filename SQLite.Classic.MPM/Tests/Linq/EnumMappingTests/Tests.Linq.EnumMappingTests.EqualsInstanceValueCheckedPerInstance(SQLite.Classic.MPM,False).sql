-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value Char(1) -- AnsiStringFixedLength
SET     @Value = 'F'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @Value

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

