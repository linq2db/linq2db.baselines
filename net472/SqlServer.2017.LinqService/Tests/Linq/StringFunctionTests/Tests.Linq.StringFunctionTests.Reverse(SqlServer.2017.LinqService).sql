﻿BeforeExecute
-- SqlServer.2017

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Reverse([p].[FirstName]) = N'nhoJ' AND [p].[PersonID] = 1

