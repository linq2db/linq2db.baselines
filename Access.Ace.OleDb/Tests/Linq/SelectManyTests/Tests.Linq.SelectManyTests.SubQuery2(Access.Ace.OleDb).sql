﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [p],
	[Person] [p2]
WHERE
	([p].[PersonID] = 1 OR [p].[PersonID] = 2) AND [p2].[PersonID] <> 2 AND
	[p].[PersonID] = [p2].[PersonID]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [p],
	[Person] [p2]
WHERE
	([p].[PersonID] = 1 OR [p].[PersonID] = 2) AND [p2].[PersonID] <> 2 AND
	[p].[PersonID] = [p2].[PersonID]

