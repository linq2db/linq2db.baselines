﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	N'John123' LIKE Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace([p].[FirstName], N'~', N'~' + N'~'), N'%', N'~' + N'%'), N'_', N'~' + N'_'), N'?', N'~' + N'?'), N'*', N'~' + N'*'), N'#', N'~' + N'#'), N'[', N'~' + N'['), N']', N'~' + N']') + N'%' ESCAPE N'~'

