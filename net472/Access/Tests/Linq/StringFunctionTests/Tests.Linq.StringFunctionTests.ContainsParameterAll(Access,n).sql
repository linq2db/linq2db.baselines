﻿BeforeExecute
-- Access AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest_1 VarWChar(3) -- String
SET     @toTest_1 = '%n%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest_1

