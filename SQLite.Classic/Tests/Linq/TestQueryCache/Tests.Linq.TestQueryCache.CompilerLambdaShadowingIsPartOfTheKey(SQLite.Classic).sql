-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	1 = 0

-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p2]
		WHERE
			[p2].[PersonID] > [p].[PersonID]
	)

-- SQLite.Classic SQLite
DECLARE @minimumId  -- Int32
SET     @minimumId = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p2]
		WHERE
			[p2].[PersonID] > [p].[PersonID]
	) AND
	[p].[PersonID] >= @minimumId

-- SQLite.Classic SQLite
DECLARE @minimumId  -- Int32
SET     @minimumId = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p2]
		WHERE
			[p2].[PersonID] > [p].[PersonID]
	) AND
	[p].[PersonID] >= @minimumId

-- SQLite.Classic SQLite
DECLARE @minimumId  -- Int32
SET     @minimumId = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p2]
		WHERE
			[p2].[PersonID] > [p].[PersonID]
	) AND
	[p].[PersonID] >= @minimumId

