﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 2

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 2

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @id

