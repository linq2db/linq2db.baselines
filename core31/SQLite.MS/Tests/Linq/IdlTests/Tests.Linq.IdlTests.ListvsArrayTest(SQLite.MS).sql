﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN ('John')

BeforeExecute
-- SQLite.MS SQLite
DECLARE @st NVarChar(4) -- String
SET     @st = 'John'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (@st)

