﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'456'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123' + [p].[FirstName] + N'456' = N'123John456'

