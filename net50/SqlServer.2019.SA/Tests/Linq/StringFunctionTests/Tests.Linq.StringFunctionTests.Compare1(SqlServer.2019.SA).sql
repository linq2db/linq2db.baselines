﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] > N'Joh' AND [p].[PersonID] = 1

