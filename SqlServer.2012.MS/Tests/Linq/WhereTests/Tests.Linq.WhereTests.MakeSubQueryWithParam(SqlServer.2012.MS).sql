﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[p].[PersonID] + @n,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + @n = 2

