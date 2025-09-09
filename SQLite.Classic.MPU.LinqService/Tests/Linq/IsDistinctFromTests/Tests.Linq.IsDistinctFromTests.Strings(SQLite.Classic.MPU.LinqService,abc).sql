BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT @value

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT @value

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS @value

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS @value

