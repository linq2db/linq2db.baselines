﻿BeforeExecute
--  SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	RIGHT([p].[FirstName], 3) = N'ohn' AND [p].[PersonID] = 1

