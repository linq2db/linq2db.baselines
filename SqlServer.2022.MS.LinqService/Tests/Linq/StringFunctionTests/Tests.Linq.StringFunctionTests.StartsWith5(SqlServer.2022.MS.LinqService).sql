﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p1].[FirstName],
	[p1].[PersonID],
	[p1].[LastName],
	[p1].[MiddleName],
	[p1].[Gender]
FROM
	[Person] [p1],
	[Person] [p2]
WHERE
	[p1].[PersonID] = [p2].[PersonID] AND Replace([p1].[FirstName], N'J', N'%') LIKE Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace([p2].[FirstName], N'J', N'%'), N'~', N'~' + N'~'), N'%', N'~' + N'%'), N'_', N'~' + N'_'), N'?', N'~' + N'?'), N'*', N'~' + N'*'), N'#', N'~' + N'#'), N'[', N'~' + N'['), N']', N'~' + N']') + N'%' ESCAPE N'~'

