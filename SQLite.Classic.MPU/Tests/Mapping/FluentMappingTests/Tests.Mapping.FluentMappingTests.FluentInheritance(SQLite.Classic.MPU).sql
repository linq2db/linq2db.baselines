BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN [t1].[Gender] = 'F' THEN 1
		ELSE 0
	END,
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[LastName],
	CASE
		WHEN [t1].[Gender] = 'M' THEN 1
		ELSE 0
	END,
	[t1].[FirstName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN [t1].[Gender] = 'F' THEN 1
		ELSE 0
	END,
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[LastName],
	CASE
		WHEN [t1].[Gender] = 'M' THEN 1
		ELSE 0
	END,
	[t1].[FirstName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 3
LIMIT 1

