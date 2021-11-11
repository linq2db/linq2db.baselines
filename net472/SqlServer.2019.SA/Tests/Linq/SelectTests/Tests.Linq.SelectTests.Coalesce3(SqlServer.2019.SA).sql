﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p].[PersonID],
	Coalesce([p].[MiddleName], [p].[FirstName], N'None'),
	Coalesce([p].[LastName], [p].[FirstName], N'None'),
	Coalesce([p].[MiddleName], [p].[MiddleName], N'None')
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

