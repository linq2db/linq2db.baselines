﻿BeforeExecute
-- SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN [p].[FirstName] > N'Johnn'
			THEN 1
		WHEN [p].[FirstName] = N'Johnn'
			THEN 0
		ELSE -1
	END <= 0 AND
	[p].[PersonID] = 1

