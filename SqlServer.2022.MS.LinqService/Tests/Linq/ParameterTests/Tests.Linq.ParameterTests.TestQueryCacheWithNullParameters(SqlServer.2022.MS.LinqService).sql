﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 0

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

