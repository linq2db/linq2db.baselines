-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 1

SELECT
	[a].[FirstName],
	[a].[PersonID],
	[a].[LastName],
	[a].[MiddleName],
	[a].[Gender]
FROM
	[Person] [a]
WHERE
	[a].[PersonID] > 0 AND [a].[PersonID] <= @Limit

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 2

SELECT
	[a].[FirstName],
	[a].[PersonID],
	[a].[LastName],
	[a].[MiddleName],
	[a].[Gender]
FROM
	[Person] [a]
WHERE
	[a].[PersonID] > 0 AND [a].[PersonID] <= @Limit

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3

SELECT
	[a].[FirstName],
	[a].[PersonID],
	[a].[LastName],
	[a].[MiddleName],
	[a].[Gender]
FROM
	[Person] [a]
WHERE
	[a].[PersonID] > 0 AND [a].[PersonID] <= @Limit

