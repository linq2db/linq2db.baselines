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
	IIF(LEN([p].[FirstName]) = 2, [p].[FirstName] + '123', Left([p].[FirstName], 2) + '123' + RIGHT([p].[FirstName], LEN([p].[FirstName]) - 2)) = 'Jo123hn' AND
	[p].[PersonID] = 1

