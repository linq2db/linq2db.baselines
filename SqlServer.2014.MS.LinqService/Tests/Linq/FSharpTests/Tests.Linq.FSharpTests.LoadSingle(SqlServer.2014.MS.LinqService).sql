﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

