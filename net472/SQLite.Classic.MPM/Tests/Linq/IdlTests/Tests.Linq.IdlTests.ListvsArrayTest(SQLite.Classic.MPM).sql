﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN ('John')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @st NVarChar(4) -- String
SET     @st = 'John'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (@st)

