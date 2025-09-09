﻿BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	CASE
		WHEN LEN([p].[FirstName] + N'.') <> 1 THEN [p].[FirstName]
		WHEN NOT ([p].[MiddleName] IS NULL OR LEN([p].[MiddleName] + N'.') = 1)
			THEN [p].[MiddleName]
		ELSE [p].[LastName]
	END
FROM
	[Person] [p]

