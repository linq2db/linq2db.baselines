﻿BeforeExecute
-- SqlServer.2008 (asynchronously)

-- SqlServer.2008
SELECT TOP (1) 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

