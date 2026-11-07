-- SQLite.Classic SQLite
DECLARE @ids  -- Int32
SET     @ids = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
		)
			THEN @ids
		ELSE 0
	END

-- SQLite.Classic SQLite
DECLARE @ids  -- Int32
SET     @ids = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
		)
			THEN @ids
		ELSE 0
	END

-- SQLite.Classic SQLite
DECLARE @ids  -- Int32
SET     @ids = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
		)
			THEN @ids
		ELSE 0
	END

-- SQLite.Classic SQLite
DECLARE @ids  -- Int32
SET     @ids = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
		)
			THEN @ids
		ELSE 0
	END

