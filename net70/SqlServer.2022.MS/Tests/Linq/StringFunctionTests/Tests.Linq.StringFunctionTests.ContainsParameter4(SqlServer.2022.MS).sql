﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p_1].[FirstName],
	[p_1].[PersonID],
	[p_1].[LastName],
	[p_1].[MiddleName],
	[p_1].[Gender]
FROM
	(
		SELECT
			IIF([p].[FirstName] LIKE N'%Jo%' ESCAPE N'~', 1, 0) as [Field1],
			[p].[FirstName],
			[p].[PersonID],
			[p].[LastName],
			[p].[MiddleName],
			[p].[Gender]
		FROM
			[Person] [p]
	) [p_1]
WHERE
	[p_1].[Field1] = 1
ORDER BY
	[p_1].[Field1]

