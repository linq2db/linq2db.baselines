﻿BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Len([p].[FirstName]) <> 0 AND [p].[PersonID] = 1

