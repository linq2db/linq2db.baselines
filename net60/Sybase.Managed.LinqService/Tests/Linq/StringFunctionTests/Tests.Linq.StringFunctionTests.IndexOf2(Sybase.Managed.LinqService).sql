﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CharIndex('e', Substring([p].[LastName], 3, Len([p].[LastName]))) + 2 = 5 AND
	[p].[PersonID] = 2

