﻿BeforeExecute
-- Access AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123?456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE '%[?]%'

BeforeExecute
-- Access AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123?456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE '%[?]%'

