﻿BeforeExecute
-- SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 0

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	([_].[PersonID] = @id)

BeforeExecute
-- SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	([_].[PersonID] = @id)

