﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[FirstName] > N'Joh', 1, IIF([p].[FirstName] = N'Joh', 0, -1)) > 0 AND
	[p].[PersonID] = 1

