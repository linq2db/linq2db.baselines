﻿BeforeExecute
-- SqlServer.2008

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	N'John123' LIKE (Replace(Replace(Replace([p].[FirstName], N'~', N'~~'), N'%', N'~%'), N'_', N'~_') + N'%') ESCAPE N'~'

