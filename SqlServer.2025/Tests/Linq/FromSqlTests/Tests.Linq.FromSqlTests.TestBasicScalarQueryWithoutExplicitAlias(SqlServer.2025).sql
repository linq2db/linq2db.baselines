﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 1 FROM Person
		) [s]([value]) ON [s].[value] = [p].[PersonID]

