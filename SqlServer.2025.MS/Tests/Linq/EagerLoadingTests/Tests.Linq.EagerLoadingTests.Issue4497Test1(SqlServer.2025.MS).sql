﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[i].[FirstName],
	[i].[PersonID],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Person] [i]
		LEFT JOIN [Patient] [p] ON [i].[PersonID] = [p].[PersonID]
WHERE
	[p].[PersonID] <> 0 OR [p].[PersonID] IS NULL

