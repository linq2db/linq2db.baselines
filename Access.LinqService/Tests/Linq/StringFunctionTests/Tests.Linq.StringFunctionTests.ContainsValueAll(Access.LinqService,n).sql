﻿BeforeExecute
-- Access AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest VarWChar(3) -- String
SET     @toTest = '%n%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest

BeforeExecute
-- Access AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest VarWChar(3) -- String
SET     @toTest = '%n%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE @toTest

