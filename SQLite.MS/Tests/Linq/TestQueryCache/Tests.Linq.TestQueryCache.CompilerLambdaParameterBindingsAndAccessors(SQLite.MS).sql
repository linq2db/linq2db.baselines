-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
DECLARE @minimumId  -- Int32
SET     @minimumId = 2

SELECT
	[p2].[PersonID]
FROM
	[Person] [p2]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] > [p2].[PersonID]
	) AND
	[p2].[PersonID] >= @minimumId

-- SQLite.MS SQLite
DECLARE @minimumId  -- Int32
SET     @minimumId = 2

SELECT
	[p2].[PersonID]
FROM
	[Person] [p2]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p2].[PersonID] > [p].[PersonID]
	) AND
	[p2].[PersonID] >= @minimumId

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
DECLARE @minimumId  -- Int32
SET     @minimumId = 3

SELECT
	[p2].[PersonID]
FROM
	[Person] [p2]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] > [p2].[PersonID]
	) AND
	[p2].[PersonID] >= @minimumId

-- SQLite.MS SQLite
DECLARE @minimumId  -- Int32
SET     @minimumId = 3

SELECT
	[p2].[PersonID]
FROM
	[Person] [p2]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p2].[PersonID] > [p].[PersonID]
	) AND
	[p2].[PersonID] >= @minimumId

