﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substring([p].[FirstName], 2, 2) = N'oh' AND [p].[PersonID] = 1

