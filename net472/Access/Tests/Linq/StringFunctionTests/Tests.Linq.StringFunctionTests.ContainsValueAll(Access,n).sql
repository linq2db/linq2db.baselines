﻿BeforeExecute
-- Access AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE '%n%'

BeforeExecute
-- Access AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE '%n%'

