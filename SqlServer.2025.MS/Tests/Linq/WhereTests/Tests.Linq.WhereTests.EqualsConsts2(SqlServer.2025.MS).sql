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
	([p].[FirstName] = N'John' OR [p].[FirstName] = N'John''s') AND
	[p].[PersonID] > 0 AND
	[p].[PersonID] < 2 AND
	[p].[LastName] <> N'123'

