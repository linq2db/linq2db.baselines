﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + @n = 2

