﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[a_Patient].[Diagnosis]
FROM
	[Person] [x]
		LEFT JOIN [Patient] [a_Patient] ON ([x].[PersonID] = [a_Patient].[PersonID])

