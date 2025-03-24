﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[p_1].[FirstName],
	[p_1].[ID],
	[p_1].[LastName],
	[p_1].[MiddleName],
	[p_1].[Gender]
FROM
	(
		SELECT
			CASE
				WHEN [p].[FirstName] LIKE N'%Jo%' ESCAPE N'~' THEN 1
				ELSE 0
			END as [Field1],
			[p].[FirstName],
			[p].[PersonID] as [ID],
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

