﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF(Len([p].[FirstName]) <> 0, [p].[FirstName], IIF(NOT ([p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0 AND Len([p].[MiddleName]) IS NOT NULL), [p].[MiddleName], [p].[LastName]))
FROM
	[Person] [p]

