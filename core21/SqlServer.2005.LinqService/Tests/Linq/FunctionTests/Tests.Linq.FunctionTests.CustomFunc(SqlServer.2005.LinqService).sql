﻿BeforeExecute
-- SqlServer.2005

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[LastName] + N', ' + [p].[FirstName] = N'Pupkin, John'

