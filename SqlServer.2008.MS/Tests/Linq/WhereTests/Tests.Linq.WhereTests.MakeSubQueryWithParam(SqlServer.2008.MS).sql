﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	([p].[PersonID] + @n) - 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + @n = 2

