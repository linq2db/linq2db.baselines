﻿BeforeExecute
-- Access AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123%456'
DECLARE @toTest VarWChar(5) -- String
SET     @toTest = '%[%]%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest

