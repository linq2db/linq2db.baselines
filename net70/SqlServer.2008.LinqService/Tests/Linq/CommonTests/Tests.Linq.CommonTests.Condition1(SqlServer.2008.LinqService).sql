﻿BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN ([p].[FirstName] IS NULL OR LEN(REPLACE([p].[FirstName],' ','.')) = 0)
			THEN 1
		ELSE 0
	END,
	[p].[FirstName],
	CASE
		WHEN ([p].[MiddleName] IS NULL OR LEN(REPLACE([p].[MiddleName],' ','.')) = 0)
			THEN 1
		ELSE 0
	END,
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]

