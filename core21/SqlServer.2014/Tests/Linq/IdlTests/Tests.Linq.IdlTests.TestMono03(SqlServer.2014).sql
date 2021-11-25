﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @p1 NVarChar(4000) -- String
SET     @p1 = N'A'
DECLARE @p2 Int -- Int32
SET     @p2 = 1

SELECT
	[y].[FirstName]
FROM
	[Person] [y]
UNION ALL
SELECT
	[x].[FirstName]
FROM
	[Person] [x]
		CROSS JOIN [Patient] [z]
WHERE
	([x].[FirstName] = @p1 OR [z].[PersonID] = @p2)

