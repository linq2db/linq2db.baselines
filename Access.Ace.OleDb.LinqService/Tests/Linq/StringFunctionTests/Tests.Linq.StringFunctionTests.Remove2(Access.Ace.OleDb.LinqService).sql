﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Left([p].[FirstName], 1) + RIGHT([p].[FirstName], LEN([p].[FirstName]) - 3) = 'Jn' AND
	[p].[PersonID] = 1

