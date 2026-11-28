-- SQLite.Classic SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 0 AND [p].[PersonID] IN (1, 2)

-- SQLite.Classic SQLite
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
	[p].[PersonID] > 0 AND [p].[PersonID] <= @Limit AND
	[p].[PersonID] IN (1, 2)

-- SQLite.Classic SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 0 AND [p].[PersonID] IN (3, 4)

-- SQLite.Classic SQLite
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
	[p].[PersonID] > 0 AND [p].[PersonID] <= @Limit AND
	[p].[PersonID] IN (3, 4)

-- SQLite.Classic SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 0 AND [p].[PersonID] IN (1, 2)

-- SQLite.Classic SQLite
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
	[p].[PersonID] > 0 AND [p].[PersonID] <= @Limit AND
	[p].[PersonID] IN (1, 2)

-- SQLite.Classic SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 0 AND [p].[PersonID] IN (3, 4)

-- SQLite.Classic SQLite
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
	[p].[PersonID] > 0 AND [p].[PersonID] <= @Limit AND
	[p].[PersonID] IN (3, 4)

