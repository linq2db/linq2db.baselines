﻿BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[FirstName] > 'Joh', 1, IIF([p].[FirstName] = 'Joh', 0, -1)) > 0 AND
	[p].[PersonID] = 1

