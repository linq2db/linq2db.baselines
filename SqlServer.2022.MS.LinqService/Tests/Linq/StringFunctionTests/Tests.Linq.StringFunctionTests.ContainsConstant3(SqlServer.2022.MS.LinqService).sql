﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'oh', N'oh''', N'oh\')

