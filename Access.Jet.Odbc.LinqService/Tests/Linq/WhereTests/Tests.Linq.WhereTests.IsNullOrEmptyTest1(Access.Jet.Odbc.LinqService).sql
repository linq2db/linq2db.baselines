﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	NOT ([nm].[MiddleName] IS NULL OR LEN([nm].[MiddleName]) = 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

