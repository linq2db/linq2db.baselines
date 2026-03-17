-- SQLite.MS SQLite
DECLARE @value  -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT @value

-- SQLite.MS SQLite
DECLARE @value  -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS NOT @value

-- SQLite.MS SQLite
DECLARE @value  -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS @value

-- SQLite.MS SQLite
DECLARE @value  -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableInt] IS @value

