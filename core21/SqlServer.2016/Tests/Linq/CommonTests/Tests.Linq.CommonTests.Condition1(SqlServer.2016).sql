﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	IIF(([p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0), 1, 0),
	[p].[FirstName],
	IIF(([p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0), 1, 0),
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]

