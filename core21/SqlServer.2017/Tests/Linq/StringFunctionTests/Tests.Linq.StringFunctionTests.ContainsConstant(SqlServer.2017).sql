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
	[p].[FirstName] LIKE N'%oh%' AND [p].[PersonID] = 1

