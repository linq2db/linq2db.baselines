﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @s NVarChar(8) -- String
SET     @s = '123]]456'
DECLARE @toTest_1 NVarChar(6) -- String
SET     @toTest_1 = '%~]~]%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest_1 ESCAPE '~'

