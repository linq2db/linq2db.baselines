﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Left([p].[FirstName], 2) = N'Jo' AND [p].[PersonID] = 1

