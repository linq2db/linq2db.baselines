﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = @p

