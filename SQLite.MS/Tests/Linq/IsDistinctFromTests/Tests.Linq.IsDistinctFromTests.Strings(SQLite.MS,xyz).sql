﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS NOT @value

BeforeExecute
-- SQLite.MS SQLite
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS NOT @value

BeforeExecute
-- SQLite.MS SQLite
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[String] IS @value

BeforeExecute
-- SQLite.MS SQLite
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	[Src] [s]
WHERE
	[s].[NullableString] IS @value

