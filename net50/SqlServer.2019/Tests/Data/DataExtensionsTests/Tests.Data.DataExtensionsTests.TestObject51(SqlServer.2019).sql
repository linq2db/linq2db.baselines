﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

-- SqlServer.2019 SqlServer.2017
SELECT TOP (1)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

