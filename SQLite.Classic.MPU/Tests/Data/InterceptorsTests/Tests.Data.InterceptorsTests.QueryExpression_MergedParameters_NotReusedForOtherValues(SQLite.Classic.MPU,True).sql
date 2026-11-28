-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 2

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 0 AND [p].[PersonID] >= @Value AND
	[p].[PersonID] <= @Value

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 3

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 0 AND [p].[PersonID] >= @Value AND
	[p].[PersonID] <= @Value_1

