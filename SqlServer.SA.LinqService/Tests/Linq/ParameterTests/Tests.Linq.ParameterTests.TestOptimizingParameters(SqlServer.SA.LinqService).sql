﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	([_].[PersonID] = @id OR [_].[PersonID] <= @id OR [_].[PersonID] = @id)

