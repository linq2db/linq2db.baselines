﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substring([p].[FirstName], 2, LEN([p].[FirstName] + N'.') - 2) = N'ohn' AND
	[p].[PersonID] = 1

