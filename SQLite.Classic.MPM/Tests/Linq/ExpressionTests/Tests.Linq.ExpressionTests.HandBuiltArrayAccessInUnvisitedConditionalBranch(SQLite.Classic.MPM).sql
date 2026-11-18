-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @values NVarChar(1) -- String
SET     @values = 'a'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
		)
			THEN @values
		ELSE 'x'
	END
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @values NVarChar(1) -- String
SET     @values = 'b'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
		)
			THEN @values
		ELSE 'x'
	END
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
	)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
	)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

