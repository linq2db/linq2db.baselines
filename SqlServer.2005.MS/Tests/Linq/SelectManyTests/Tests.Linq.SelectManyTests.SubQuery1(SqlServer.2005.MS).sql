﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[p1].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p1],
	[Person] [p]
WHERE
	[p1].[PersonID] = [p].[PersonID] AND [p].[PersonID] = @id

