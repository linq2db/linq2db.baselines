﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

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

