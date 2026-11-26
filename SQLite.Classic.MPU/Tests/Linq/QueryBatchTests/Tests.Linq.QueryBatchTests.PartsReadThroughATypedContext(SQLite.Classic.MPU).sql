-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @MinId Integer -- Int32
SET     @MinId = 1

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
;
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] > @MinId
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @MinId Integer -- Int32
SET     @MinId = 3

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
;
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] > @MinId
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 3

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
;
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] > @id
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 2

