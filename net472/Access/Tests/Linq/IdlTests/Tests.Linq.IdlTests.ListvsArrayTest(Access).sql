﻿BeforeExecute
-- Access AccessOleDb

SELECT 
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN ('John')

BeforeExecute
-- Access AccessOleDb
DECLARE @st VarWChar(4) -- String
SET     @st = 'John'

SELECT 
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (@st)

