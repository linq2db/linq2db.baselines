﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Iif([a_Patient].[PersonID] IS NOT NULL, True, False)
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON ([p].[PersonID] = [a_Patient].[PersonID])

