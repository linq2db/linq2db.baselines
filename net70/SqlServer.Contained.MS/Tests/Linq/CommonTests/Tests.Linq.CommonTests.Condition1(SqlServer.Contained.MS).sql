﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	IIF(([p].[FirstName] IS NULL OR LEN(REPLACE([p].[FirstName],' ','.')) = 0), 1, 0),
	[p].[FirstName],
	IIF(([p].[MiddleName] IS NULL OR LEN(REPLACE([p].[MiddleName],' ','.')) = 0), 1, 0),
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]

