﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	(([_].[PersonID] = @id OR [_].[PersonID] <= @id) OR [_].[PersonID] = @id)

