﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[PersonID],
	Coalesce([p].[MiddleName], [p].[FirstName], N'None'),
	Coalesce([p].[LastName], [p].[FirstName], N'None'),
	Coalesce([p].[MiddleName], [p].[MiddleName], N'None')
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

