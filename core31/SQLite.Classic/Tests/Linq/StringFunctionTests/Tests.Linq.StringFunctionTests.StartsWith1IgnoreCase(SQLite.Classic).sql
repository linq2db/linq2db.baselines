﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'joH%' ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE 'joH%' ESCAPE '~' AND [p].[PersonID] = 1

