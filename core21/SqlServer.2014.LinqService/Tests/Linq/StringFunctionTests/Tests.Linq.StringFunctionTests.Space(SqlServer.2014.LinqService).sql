﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] + Space([p].[PersonID] + 1) + N'123' = N'John  123' AND
	[p].[PersonID] = 1

