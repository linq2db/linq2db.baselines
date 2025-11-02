-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p
LIMIT 1

