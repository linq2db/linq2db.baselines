﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = 'O'

SELECT
	[x].[PersonID],
	[x].[Diagnosis]
FROM
	[Patient] [x]
		INNER JOIN [Person] [y] ON ([x].[PersonID] = [y].[PersonID])
WHERE
	[y].[Gender] = ?

