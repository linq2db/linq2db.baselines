﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[_].[PersonID],
	[_].[Gender],
	[_].[FirstName],
	[_].[LastName],
	[_].[MiddleName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1

