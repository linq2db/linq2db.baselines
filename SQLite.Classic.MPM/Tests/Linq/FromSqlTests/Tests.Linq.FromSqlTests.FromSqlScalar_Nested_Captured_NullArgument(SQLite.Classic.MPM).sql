-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @In Integer -- Int32
SET     @In = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT @In AS value
			) [t1]
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT NULL AS value
			) [t1]
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @In Integer -- Int32
SET     @In = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT @In AS value
			) [t1]
	)

