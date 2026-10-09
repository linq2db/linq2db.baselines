-- SQLite.Classic SQLite
DECLARE @p  -- Int32
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

-- SQLite.Classic SQLite
DECLARE @p  -- Int64
SET     @p = 2

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
DECLARE @p  -- Int32
SET     @p = 3
DECLARE @p_1  -- Int32
SET     @p_1 = 4

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

