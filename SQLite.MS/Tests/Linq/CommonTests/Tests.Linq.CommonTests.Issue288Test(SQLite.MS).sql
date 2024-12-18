﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p NVarChar(4) -- String
SET     @p = 'John'

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p AND [p].[FirstName] IS NOT NULL
LIMIT 1

