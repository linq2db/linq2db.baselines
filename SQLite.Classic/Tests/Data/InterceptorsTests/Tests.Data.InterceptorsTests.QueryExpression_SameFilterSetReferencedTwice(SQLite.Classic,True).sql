-- SQLite.Classic SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 2

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 0 AND [p].[PersonID] <= @Limit
UNION ALL
SELECT
	[p_1].[FirstName],
	[p_1].[PersonID],
	[p_1].[LastName],
	[p_1].[MiddleName],
	[p_1].[Gender]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] > 0 AND [p_1].[PersonID] <= @Limit

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
	[p].[PersonID] > 0 AND [p].[PersonID] <= @Limit
UNION ALL
SELECT
	[p_1].[FirstName],
	[p_1].[PersonID],
	[p_1].[LastName],
	[p_1].[MiddleName],
	[p_1].[Gender]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] > 0 AND [p_1].[PersonID] <= @Limit

-- SQLite.Classic SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 2

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 0 AND [p].[PersonID] <= @Limit
UNION ALL
SELECT
	[p_1].[FirstName],
	[p_1].[PersonID],
	[p_1].[LastName],
	[p_1].[MiddleName],
	[p_1].[Gender]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] > 0 AND [p_1].[PersonID] <= @Limit

