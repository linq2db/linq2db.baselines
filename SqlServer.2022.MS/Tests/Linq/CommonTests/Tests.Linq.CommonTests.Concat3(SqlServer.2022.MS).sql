﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 12') = N'John 12'

