﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @t NVarChar(1) -- String
SET     @t = 'A'

SELECT
	[y].[FirstName]
FROM
	[Person] [y]
UNION ALL
SELECT
	[x].[FirstName]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @t

BeforeExecute
-- SQLite.MS SQLite
DECLARE @t NVarChar(1) -- String
SET     @t = 'A'

SELECT
	[y].[FirstName]
FROM
	[Person] [y]
UNION ALL
SELECT
	[x].[FirstName]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @t

