-- SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID = @p
			) [s]
		WHERE
			[s].[PersonID] = [p].[PersonID]
	)

-- SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 4

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID = @p
			) [s]
		WHERE
			[s].[PersonID] = [p].[PersonID]
	)

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
			(
				SELECT * FROM Person WHERE PersonID = NULL
			) [s]
		WHERE
			[s].[PersonID] = [p].[PersonID]
	)

-- SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID = @p
			) [s]
		WHERE
			[s].[PersonID] = [p].[PersonID]
	)

