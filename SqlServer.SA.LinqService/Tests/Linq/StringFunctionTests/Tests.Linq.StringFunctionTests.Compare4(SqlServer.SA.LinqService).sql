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
	IIF(Lower(Substring([p].[FirstName], 2, 2)) > N'oh', 1, IIF(Lower(Substring([p].[FirstName], 2, 2)) = N'oh', 0, -1)) = 0 AND
	[p].[PersonID] = 1

