﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

