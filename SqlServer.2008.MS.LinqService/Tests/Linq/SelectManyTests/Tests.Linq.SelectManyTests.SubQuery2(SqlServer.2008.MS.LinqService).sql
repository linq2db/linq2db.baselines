﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [p],
	[Person] [p2]
WHERE
	[p].[PersonID] = [p2].[PersonID] AND ([p].[PersonID] = 1 OR [p].[PersonID] = 2) AND
	[p2].[PersonID] <> 2

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [p],
	[Person] [p2]
WHERE
	[p].[PersonID] = [p2].[PersonID] AND ([p].[PersonID] = 1 OR [p].[PersonID] = 2) AND
	[p2].[PersonID] <> 2

