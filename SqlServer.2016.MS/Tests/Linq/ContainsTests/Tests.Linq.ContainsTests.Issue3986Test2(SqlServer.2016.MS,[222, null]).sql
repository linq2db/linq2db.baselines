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
	[r].[PersonID] = 4 AND ([r].[MiddleName] NOT IN (N'222') AND [r].[MiddleName] IS NOT NULL)

