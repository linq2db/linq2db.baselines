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
	RIGHT([p].[FirstName], 3) = 'ohn' AND [p].[PersonID] = 1

