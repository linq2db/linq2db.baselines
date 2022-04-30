﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND Coalesce([p].[MiddleName], N'None') = N'None' AND
	Coalesce([p].[FirstName], N'None') = N'John'

