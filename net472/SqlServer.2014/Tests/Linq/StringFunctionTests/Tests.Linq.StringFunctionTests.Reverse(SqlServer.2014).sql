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
	Reverse([p].[FirstName]) = N'nhoJ' AND [p].[PersonID] = 1

