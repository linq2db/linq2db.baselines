﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(Lower([p].[FirstName]) > N'joh', 1, IIF(Lower([p].[FirstName]) = N'joh', 0, -1)) > 0 AND
	[p].[PersonID] = 1

