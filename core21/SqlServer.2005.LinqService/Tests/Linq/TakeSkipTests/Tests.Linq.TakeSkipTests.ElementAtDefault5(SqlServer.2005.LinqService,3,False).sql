﻿BeforeExecute
-- SqlServer.2005

SELECT 
	[t2].[FirstName], 
	[t2].[PersonID], 
	[t2].[LastName], 
	[t2].[MiddleName], 
	[t2].[Gender]
FROM
	( 
		SELECT 
			[t1].[FirstName], 
			[t1].[PersonID], 
			[t1].[LastName], 
			[t1].[MiddleName], 
			[t1].[Gender], 
			ROW_NUMBER() OVER (ORDER BY [t1].[LastName]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > 3 AND [t2].[RN] <= 4

