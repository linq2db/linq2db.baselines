﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(IIF([p].[FirstName] IS NULL, NULL, IIF([p].[FirstName] LIKE N'Jo%', 1, 0)) IS NULL, 0, IIF([p].[FirstName] IS NULL, NULL, IIF([p].[FirstName] LIKE N'Jo%', 1, 0))) = 1

