-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] <= 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] >= 3

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] >= 3 AND [p].[PersonID] <= @Limit

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] <= 2 AND [p].[PersonID] <= @Limit

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] <= 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] >= 3

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] >= 3 AND [p].[PersonID] <= @Limit

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] <= 2 AND [p].[PersonID] <= @Limit

