﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = 3 AND ([r].[MiddleName] = N'Ko' OR [r].[MiddleName] IS NULL)

