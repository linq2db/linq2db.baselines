﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE '%n%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE '%n%' ESCAPE '~'

